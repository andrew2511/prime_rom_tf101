.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private codeSource:Ljava/security/CodeSource;

.field private dynamicPerms:Z

.field private permissions:Ljava/security/PermissionCollection;

.field private principals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .registers 3
    .parameter "cs"
    .parameter "permissions"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    .line 72
    if-eqz p2, :cond_a

    .line 73
    invoke-virtual {p2}, Ljava/security/PermissionCollection;->setReadOnly()V

    .line 75
    :cond_a
    iput-object p2, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .registers 8
    .parameter "cs"
    .parameter "permissions"
    .parameter "cl"
    .parameter "principals"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    .line 111
    if-eqz p2, :cond_b

    .line 112
    invoke-virtual {p2}, Ljava/security/PermissionCollection;->setReadOnly()V

    .line 114
    :cond_b
    iput-object p2, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    .line 115
    iput-object p3, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    .line 116
    if-eqz p4, :cond_1e

    .line 117
    array-length v0, p4

    new-array v0, v0, [Ljava/security/Principal;

    iput-object v0, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    .line 118
    iget-object v0, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v1, v1

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    .line 122
    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public final getCodeSource()Ljava/security/CodeSource;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    return-object v0
.end method

.method public final getPermissions()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method public final getPrincipals()[Ljava/security/Principal;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    if-nez v1, :cond_8

    .line 165
    new-array v1, v3, [Ljava/security/Principal;

    .line 169
    :goto_7
    return-object v1

    .line 167
    :cond_8
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/Principal;

    .line 168
    .local v0, tmp:[Ljava/security/Principal;
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 169
    goto :goto_7
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 196
    iget-boolean v0, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/security/Policy;->implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    const/4 v0, 0x1

    .line 205
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    invoke-virtual {v0, p1}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "ProtectionDomain\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "CodeSource="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    if-nez v4, :cond_70

    const-string v4, "<null>"

    :goto_18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v3, "ClassLoader="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_77

    const-string v4, "<null>"

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v3, v3

    if-nez v3, :cond_7e

    .line 225
    :cond_3f
    const-string v3, "<no principals>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_44
    const-string v3, "Permissions:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v3, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    if-nez v3, :cond_b2

    .line 239
    const-string v3, "\t\t<no static permissions>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_52
    iget-boolean v3, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    if-eqz v3, :cond_6b

    .line 246
    invoke-static {}, Ljava/security/Policy;->isSet()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 248
    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/security/Policy;->getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 249
    .local v2, perms:Ljava/security/PermissionCollection;
    if-nez v2, :cond_c8

    .line 250
    const-string v3, "\t\t<no dynamic permissions>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v2           #perms:Ljava/security/PermissionCollection;
    :cond_6b
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 218
    :cond_70
    iget-object v4, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    invoke-virtual {v4}, Ljava/security/CodeSource;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    .line 221
    :cond_77
    iget-object v4, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    .line 227
    :cond_7e
    const-string v3, "Principals: <\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const/4 v1, 0x0

    .local v1, i:I
    :goto_84
    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v3, v3

    if-ge v1, v3, :cond_ac

    .line 229
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    aget-object v4, v4, v1

    if-nez v4, :cond_a3

    const-string v4, "<null>"

    :goto_97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 229
    :cond_a3
    iget-object v4, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_97

    .line 233
    :cond_ac
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 241
    .end local v1           #i:I
    :cond_b2
    const-string v3, "\t\tstatic: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    invoke-virtual {v4}, Ljava/security/PermissionCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 252
    .restart local v2       #perms:Ljava/security/PermissionCollection;
    :cond_c8
    const-string v3, "\t\tdynamic: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/PermissionCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 256
    .end local v2           #perms:Ljava/security/PermissionCollection;
    :cond_dc
    const-string v3, "\t\t<no dynamic permissions>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b
.end method
