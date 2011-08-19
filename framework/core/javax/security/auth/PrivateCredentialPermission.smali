.class public final Ljavax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;
.source "PrivateCredentialPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    }
.end annotation


# static fields
.field private static final READ:Ljava/lang/String; = "read"

.field private static final serialVersionUID:J = 0x4955dc777b507f4cL


# instance fields
.field private credentialClass:Ljava/lang/String;

.field private transient offset:I

.field private transient set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "action"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v0, "read"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    invoke-direct {p0, p1}, Ljavax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    .line 82
    return-void

    .line 80
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action must be \"read\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 11
    .parameter "credentialClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, principals:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Principal;>;"
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    .line 97
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v5, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 98
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Principal;

    .line 99
    .local v4, p:Ljava/security/Principal;
    new-instance v0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, element:Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    const/4 v1, 0x0

    .line 102
    .local v1, found:Z
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_30
    iget v5, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    if-ge v3, v5, :cond_3f

    .line 103
    iget-object v5, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 104
    const/4 v1, 0x1

    .line 108
    :cond_3f
    if-nez v1, :cond_11

    .line 109
    iget-object v5, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v6, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v0, v5, v6

    goto :goto_11

    .line 102
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 112
    .end local v0           #element:Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    .end local v1           #found:Z
    .end local v3           #ii:I
    .end local v4           #p:Ljava/security/Principal;
    :cond_4f
    return-void
.end method

.method private badSyntax()Ljava/lang/IllegalArgumentException;
    .registers 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target name MUST have the following syntax: CredentialClass 1*(PrincipalClass \"PrincipalName\")"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initTargetName(Ljava/lang/String;)V
    .registers 16
    .parameter "name"

    .prologue
    .line 121
    if-nez p1, :cond_a

    .line 122
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "name == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 126
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 128
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "name is empty"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 132
    :cond_1c
    const/16 v11, 0x20

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 133
    .local v0, beg:I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_2a

    .line 134
    invoke-direct {p0}, Ljavax/security/auth/PrivateCredentialPermission;->badSyntax()Ljava/lang/IllegalArgumentException;

    move-result-object v11

    throw v11

    .line 136
    :cond_2a
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 142
    .local v8, nameLength:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_39
    if-ge v0, v8, :cond_63

    .line 143
    const/16 v11, 0x20

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 144
    .local v4, i:I
    const/16 v11, 0x22

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 146
    const/4 v11, -0x1

    if-eq v4, v11, :cond_59

    const/4 v11, -0x1

    if-eq v7, v11, :cond_59

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_5e

    .line 147
    :cond_59
    invoke-direct {p0}, Ljavax/security/auth/PrivateCredentialPermission;->badSyntax()Ljava/lang/IllegalArgumentException;

    move-result-object v11

    throw v11

    .line 142
    :cond_5e
    add-int/lit8 v0, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 152
    .end local v4           #i:I
    :cond_63
    const/4 v11, 0x1

    if-ge v1, v11, :cond_6b

    .line 153
    invoke-direct {p0}, Ljavax/security/auth/PrivateCredentialPermission;->badSyntax()Ljava/lang/IllegalArgumentException;

    move-result-object v11

    throw v11

    .line 156
    :cond_6b
    const/16 v11, 0x20

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 163
    new-array v11, v1, [Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iput-object v11, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 164
    const/4 v6, 0x0

    .local v6, index:I
    :goto_78
    if-ge v6, v1, :cond_bc

    .line 165
    const/16 v11, 0x20

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 166
    .restart local v4       #i:I
    const/16 v11, 0x22

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 168
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, principalClass:Ljava/lang/String;
    add-int/lit8 v11, v4, 0x2

    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, principalName:Ljava/lang/String;
    new-instance v2, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    invoke-direct {v2, v9, v10}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v2, element:Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    const/4 v3, 0x0

    .line 174
    .local v3, found:Z
    const/4 v5, 0x0

    .local v5, ii:I
    :goto_99
    iget v11, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    if-ge v5, v11, :cond_a8

    .line 175
    iget-object v11, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v11, v11, v5

    invoke-virtual {v11, v2}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 176
    const/4 v3, 0x1

    .line 180
    :cond_a8
    if-nez v3, :cond_b4

    .line 181
    iget-object v11, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v12, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    aput-object v2, v11, v12

    .line 164
    :cond_b4
    add-int/lit8 v0, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 174
    :cond_b9
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 184
    .end local v2           #element:Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    .end local v3           #found:Z
    .end local v4           #i:I
    .end local v5           #ii:I
    .end local v9           #principalClass:Ljava/lang/String;
    .end local v10           #principalName:Ljava/lang/String;
    :cond_bc
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 193
    invoke-virtual {p0}, Ljavax/security/auth/PrivateCredentialPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/auth/PrivateCredentialPermission;->initTargetName(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 11
    .parameter "ar1"
    .parameter "ar2"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 307
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    move v3, v6

    .line 326
    :goto_7
    return v3

    .line 310
    :cond_8
    if-eqz p1, :cond_c

    if-nez p2, :cond_e

    :cond_c
    move v3, v5

    .line 311
    goto :goto_7

    .line 314
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, p3, :cond_2a

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_13
    if-ge v2, p3, :cond_20

    .line 317
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 318
    const/4 v0, 0x1

    .line 322
    :cond_20
    if-nez v0, :cond_27

    move v3, v5

    .line 323
    goto :goto_7

    .line 316
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 314
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .end local v0           #found:Z
    .end local v2           #j:I
    :cond_2a
    move v3, v6

    .line 326
    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    if-ne p1, p0, :cond_6

    move v2, v6

    .line 258
    :goto_5
    return v2

    .line 252
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v5

    .line 253
    goto :goto_5

    .line 256
    :cond_14
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/PrivateCredentialPermission;

    move-object v1, v0

    .line 258
    .local v1, that:Ljavax/security/auth/PrivateCredentialPermission;
    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    iget-object v3, v1, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    iget v3, v1, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    if-ne v2, v3, :cond_36

    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iget-object v3, v1, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    iget v4, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    invoke-direct {p0, v2, v3, v4}, Ljavax/security/auth/PrivateCredentialPermission;->sameMembers([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v6

    goto :goto_5

    :cond_36
    move v2, v5

    goto :goto_5
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const-string v0, "read"

    return-object v0
.end method

.method public getCredentialClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()[[Ljava/lang/String;
    .registers 6

    .prologue
    .line 214
    iget v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    .line 216
    .local v1, s:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 217
    aget-object v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v0

    iget-object v4, v4, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 218
    aget-object v2, v1, v0

    const/4 v3, 0x1

    iget-object v4, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v4, v4, v0

    iget-object v4, v4, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 220
    :cond_2c
    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    if-ge v1, v2, :cond_12

    .line 241
    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    :cond_12
    invoke-virtual {p0}, Ljavax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 14
    .parameter "permission"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 265
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_10

    :cond_e
    move v8, v10

    .line 294
    :goto_f
    return v8

    .line 269
    :cond_10
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/PrivateCredentialPermission;

    move-object v3, v0

    .line 271
    .local v3, that:Ljavax/security/auth/PrivateCredentialPermission;
    const-string v8, "*"

    iget-object v9, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    iget-object v8, p0, Ljavax/security/auth/PrivateCredentialPermission;->credentialClass:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/security/auth/PrivateCredentialPermission;->getCredentialClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    move v8, v10

    .line 273
    goto :goto_f

    .line 276
    :cond_2c
    iget v8, v3, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    if-nez v8, :cond_32

    move v8, v11

    .line 277
    goto :goto_f

    .line 280
    :cond_32
    iget-object v6, p0, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 281
    .local v6, thisCo:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    iget-object v4, v3, Ljavax/security/auth/PrivateCredentialPermission;->set:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 282
    .local v4, thatCo:[Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    iget v7, p0, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    .line 283
    .local v7, thisPrincipalsSize:I
    iget v5, v3, Ljavax/security/auth/PrivateCredentialPermission;->offset:I

    .line 284
    .local v5, thatPrincipalsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3b
    if-ge v1, v7, :cond_55

    .line 285
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3e
    if-ge v2, v5, :cond_4a

    .line 286
    aget-object v8, v6, v1

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->implies(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 290
    :cond_4a
    array-length v8, v4

    if-ne v2, v8, :cond_52

    move v8, v10

    .line 291
    goto :goto_f

    .line 285
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 284
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .end local v2           #j:I
    :cond_55
    move v8, v11

    .line 294
    goto :goto_f
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method
