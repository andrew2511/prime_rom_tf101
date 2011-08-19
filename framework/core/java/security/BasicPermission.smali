.class public abstract Ljava/security/BasicPermission;
.super Ljava/security/Permission;
.source "BasicPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x57250bdccf4ea67aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "action"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private final checkName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 83
    if-nez p1, :cond_a

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_18
    return-void
.end method

.method static nameImplies(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "thisName"
    .parameter "thatName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 164
    if-ne p0, p1, :cond_6

    move v2, v4

    .line 184
    :goto_5
    return v2

    .line 167
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_12

    move v2, v5

    .line 169
    goto :goto_5

    .line 171
    :cond_12
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_39

    if-eqz v0, :cond_28

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_39

    .line 174
    :cond_28
    add-int/lit8 v0, v0, -0x1

    .line 179
    :cond_2a
    move v1, v0

    .local v1, i:I
    :goto_2b
    if-ltz v1, :cond_45

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_42

    move v2, v5

    .line 181
    goto :goto_5

    .line 175
    .end local v1           #i:I
    :cond_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_2a

    move v2, v5

    .line 177
    goto :goto_5

    .line 179
    .restart local v1       #i:I
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_45
    move v2, v4

    .line 184
    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 211
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 107
    if-ne p1, p0, :cond_4

    .line 108
    const/4 v0, 0x1

    .line 114
    .end local p1
    :goto_3
    return v0

    .line 111
    .restart local p1
    :cond_4
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 112
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/security/Permission;

    .end local p1
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 114
    .restart local p1
    :cond_1f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 4
    .parameter "permission"

    .prologue
    .line 152
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 153
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/BasicPermission;->nameImplies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 155
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 202
    new-instance v0, Ljava/security/BasicPermissionCollection;

    invoke-direct {v0}, Ljava/security/BasicPermissionCollection;-><init>()V

    return-object v0
.end method
