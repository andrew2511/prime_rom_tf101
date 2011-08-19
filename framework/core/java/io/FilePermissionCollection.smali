.class final Ljava/io/FilePermissionCollection;
.super Ljava/security/PermissionCollection;
.source "FilePermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1e92797dd48e55a9L


# instance fields
.field permissions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/io/FilePermissionCollection;->permissions:Ljava/util/Vector;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 4
    .parameter "permission"

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/io/FilePermissionCollection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60
    :cond_c
    instance-of v0, p1, Ljava/io/FilePermission;

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p0, Ljava/io/FilePermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    return-void

    .line 63
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/security/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljava/io/FilePermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 9
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 88
    instance-of v4, p1, Ljava/io/FilePermission;

    if-eqz v4, :cond_35

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/io/FilePermission;

    move-object v1, v0

    .line 90
    .local v1, fp:Ljava/io/FilePermission;
    const/4 v3, 0x0

    .line 91
    .local v3, matchedMask:I
    const/4 v2, 0x0

    .line 93
    .local v2, i:I
    :goto_b
    iget-object v4, p0, Ljava/io/FilePermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    iget v4, v1, Ljava/io/FilePermission;->mask:I

    and-int/2addr v4, v3

    iget v5, v1, Ljava/io/FilePermission;->mask:I

    if-eq v4, v5, :cond_2a

    .line 95
    iget-object v4, p0, Ljava/io/FilePermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FilePermission;

    invoke-virtual {v4, p1}, Ljava/io/FilePermission;->impliesMask(Ljava/security/Permission;)I

    move-result v4

    or-int/2addr v3, v4

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 99
    :cond_2a
    iget v4, v1, Ljava/io/FilePermission;->mask:I

    and-int/2addr v4, v3

    iget v5, v1, Ljava/io/FilePermission;->mask:I

    if-ne v4, v5, :cond_33

    const/4 v4, 0x1

    .line 101
    .end local v1           #fp:Ljava/io/FilePermission;
    .end local v2           #i:I
    .end local v3           #matchedMask:I
    :goto_32
    return v4

    .restart local v1       #fp:Ljava/io/FilePermission;
    .restart local v2       #i:I
    .restart local v3       #matchedMask:I
    :cond_33
    move v4, v6

    .line 99
    goto :goto_32

    .end local v1           #fp:Ljava/io/FilePermission;
    .end local v2           #i:I
    .end local v3           #matchedMask:I
    :cond_35
    move v4, v6

    .line 101
    goto :goto_32
.end method
