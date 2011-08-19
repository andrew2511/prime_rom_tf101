.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x42eb170027e50b4eL


# instance fields
.field private actions:Ljava/lang/String;

.field private transient hash:I

.field private name:Ljava/lang/String;

.field private transient targetCerts:[Ljava/security/cert/Certificate;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter "type"
    .parameter "name"
    .parameter "actions"
    .parameter "certs"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Ljava/security/UnresolvedPermission;->checkType(Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Ljava/security/UnresolvedPermission;->type:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    .line 83
    if-eqz p4, :cond_1a

    .line 84
    array-length v0, p4

    new-array v0, v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    .line 85
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    :cond_1a
    iput v2, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 88
    return-void
.end method

.method private final checkType(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 92
    if-nez p1, :cond_a

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_a
    return-void
.end method

.method private equalsCertificates([Ljava/security/cert/Certificate;[Ljava/security/cert/Certificate;)Z
    .registers 11
    .parameter "certs1"
    .parameter "certs2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    if-eqz p1, :cond_6

    if-nez p2, :cond_c

    .line 144
    :cond_6
    if-ne p1, p2, :cond_a

    move v4, v7

    .line 189
    :goto_9
    return v4

    :cond_a
    move v4, v6

    .line 144
    goto :goto_9

    .line 147
    :cond_c
    array-length v3, p1

    .line 148
    .local v3, length:I
    array-length v4, p2

    if-eq v3, v4, :cond_12

    move v4, v6

    .line 149
    goto :goto_9

    .line 152
    :cond_12
    if-lez v3, :cond_54

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v3, :cond_34

    .line 156
    aget-object v4, p1, v1

    if-nez v4, :cond_1e

    .line 154
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 159
    :cond_1e
    const/4 v0, 0x0

    .line 160
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_20
    if-ge v2, v3, :cond_2d

    .line 161
    aget-object v4, p1, v1

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 162
    const/4 v0, 0x1

    .line 167
    :cond_2d
    if-nez v0, :cond_1b

    move v4, v6

    .line 168
    goto :goto_9

    .line 160
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 172
    .end local v0           #found:Z
    .end local v2           #j:I
    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v3, :cond_54

    .line 173
    aget-object v4, p2, v1

    if-nez v4, :cond_3e

    .line 172
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 176
    :cond_3e
    const/4 v0, 0x0

    .line 177
    .restart local v0       #found:Z
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_40
    if-ge v2, v3, :cond_4d

    .line 178
    aget-object v4, p2, v1

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 179
    const/4 v0, 0x1

    .line 184
    :cond_4d
    if-nez v0, :cond_3b

    move v4, v6

    .line 185
    goto :goto_9

    .line 177
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_54
    move v4, v7

    .line 189
    goto :goto_9
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 395
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ljava/security/UnresolvedPermission;->checkType(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 397
    .local v1, certNumber:I
    if-eqz v1, :cond_49

    .line 398
    new-array v6, v1, [Ljava/security/cert/Certificate;

    iput-object v6, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    .line 399
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    if-ge v3, v1, :cond_49

    .line 401
    :try_start_17
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 403
    .local v4, length:I
    new-array v2, v4, [B

    .line 404
    .local v2, enc:[B
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ObjectInputStream;->readFully([BII)V

    .line 405
    iget-object v6, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_36
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_36} :catch_39

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 407
    .end local v2           #enc:[B
    .end local v4           #length:I
    .end local v5           #type:Ljava/lang/String;
    :catch_39
    move-exception v6

    move-object v0, v6

    .line 408
    .local v0, cee:Ljava/security/cert/CertificateException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error decoding certificate"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 412
    .end local v0           #cee:Ljava/security/cert/CertificateException;
    .end local v3           #i:I
    .restart local p0
    :cond_49
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 372
    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    if-nez v3, :cond_c

    .line 373
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 387
    :cond_b
    return-void

    .line 375
    :cond_c
    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 376
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 378
    :try_start_18
    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 379
    .local v1, enc:[B
    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 380
    array-length v3, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 381
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_32
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_32} :catch_35

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 382
    .end local v1           #enc:[B
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 383
    .local v0, cee:Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/NotSerializableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot encode certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 121
    if-ne p1, p0, :cond_5

    move v2, v4

    .line 135
    :goto_4
    return v2

    .line 124
    :cond_5
    instance-of v2, p1, Ljava/security/UnresolvedPermission;

    if-eqz v2, :cond_41

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/security/UnresolvedPermission;

    move-object v1, v0

    .line 126
    .local v1, that:Ljava/security/UnresolvedPermission;
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, v1, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    if-nez v2, :cond_41

    :cond_23
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    if-nez v2, :cond_43

    iget-object v2, v1, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    if-nez v2, :cond_41

    :goto_2b
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Ljava/security/UnresolvedPermission;->equalsCertificates([Ljava/security/cert/Certificate;[Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v2, v4

    .line 132
    goto :goto_4

    .line 126
    :cond_37
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 135
    .end local v1           #that:Ljava/security/UnresolvedPermission;
    :cond_41
    const/4 v2, 0x0

    goto :goto_4

    .line 126
    .restart local v1       #that:Ljava/security/UnresolvedPermission;
    :cond_43
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_2b
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const-string v0, ""

    return-object v0
.end method

.method public getUnresolvedActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    if-eqz v1, :cond_12

    .line 270
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/cert/Certificate;

    .line 271
    .local v0, certs:[Ljava/security/cert/Certificate;
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 274
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getUnresolvedName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUnresolvedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 204
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    if-nez v0, :cond_2c

    .line 205
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 206
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 207
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 209
    :cond_1d
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 210
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 213
    :cond_2c
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 318
    new-instance v0, Ljava/security/UnresolvedPermissionCollection;

    invoke-direct {v0}, Ljava/security/UnresolvedPermissionCollection;-><init>()V

    return-object v0
.end method

.method resolve(Ljava/lang/Class;)Ljava/security/Permission;
    .registers 4
    .parameter "targetType"

    .prologue
    .line 340
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 342
    :try_start_c
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    .line 349
    :goto_14
    return-object v0

    .line 345
    :catch_15
    move-exception v0

    .line 349
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unresolved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->actions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
