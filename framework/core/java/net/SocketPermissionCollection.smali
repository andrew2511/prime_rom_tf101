.class final Ljava/net/SocketPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "SocketPermissionCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x26ae13457f91ba1aL


# instance fields
.field private permissions:Ljava/util/Vector;
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
    .line 38
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/net/SocketPermissionCollection;->permissions:Ljava/util/Vector;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 4
    .parameter "permission"

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/net/SocketPermissionCollection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 47
    :cond_c
    instance-of v0, p1, Ljava/net/SocketPermission;

    if-nez v0, :cond_1a

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/security/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1a
    iget-object v0, p0, Ljava/net/SocketPermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    return-void
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
    .line 56
    iget-object v0, p0, Ljava/net/SocketPermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 13
    .parameter "permission"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 66
    instance-of v7, p1, Ljava/net/SocketPermission;

    if-nez v7, :cond_8

    move v7, v9

    .line 96
    :goto_7
    return v7

    .line 69
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/net/SocketPermission;

    move-object v2, v0

    .line 70
    .local v2, argPerm:Ljava/net/SocketPermission;
    iget v5, v2, Ljava/net/SocketPermission;->actionsMask:I

    .line 71
    .local v5, pmask:I
    const/4 v1, 0x0

    .line 72
    .local v1, allMask:I
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Ljava/net/SocketPermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 73
    .local v3, count:I
    :goto_16
    if-ge v4, v3, :cond_5d

    and-int v7, v1, v5

    if-eq v7, v5, :cond_5d

    .line 74
    iget-object v7, p0, Ljava/net/SocketPermissionCollection;->permissions:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/SocketPermission;

    .line 75
    .local v6, sp:Ljava/net/SocketPermission;
    invoke-virtual {v6, v2}, Ljava/net/SocketPermission;->checkHost(Ljava/net/SocketPermission;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 76
    iget v7, v6, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_34

    .line 77
    or-int/lit8 v1, v1, 0x8

    .line 80
    :cond_34
    iget v7, v2, Ljava/net/SocketPermission;->portMin:I

    iget v8, v6, Ljava/net/SocketPermission;->portMin:I

    if-lt v7, v8, :cond_5a

    iget v7, v2, Ljava/net/SocketPermission;->portMax:I

    iget v8, v6, Ljava/net/SocketPermission;->portMax:I

    if-gt v7, v8, :cond_5a

    .line 82
    iget v7, v6, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v10, :cond_48

    .line 83
    or-int/lit8 v1, v1, 0x1

    .line 85
    :cond_48
    iget v7, v6, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_51

    .line 86
    or-int/lit8 v1, v1, 0x4

    .line 88
    :cond_51
    iget v7, v6, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5a

    .line 89
    or-int/lit8 v1, v1, 0x2

    .line 93
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 96
    .end local v6           #sp:Ljava/net/SocketPermission;
    :cond_5d
    and-int v7, v1, v5

    if-ne v7, v5, :cond_63

    move v7, v10

    goto :goto_7

    :cond_63
    move v7, v9

    goto :goto_7
.end method
