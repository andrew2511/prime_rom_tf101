.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# instance fields
.field private pds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/CodeSource;",
            "Ljava/security/ProtectionDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method private getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .registers 6
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 146
    if-nez p1, :cond_4

    .line 160
    :goto_3
    return-object v2

    .line 152
    :cond_4
    iget-object v2, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    monitor-enter v2

    .line 153
    :try_start_7
    iget-object v3, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    .local v0, pd:Ljava/security/ProtectionDomain;
    if-eqz v0, :cond_14

    .line 154
    monitor-exit v2

    move-object v2, v0

    goto :goto_3

    .line 156
    :cond_14
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v1

    .line 157
    .local v1, perms:Ljava/security/PermissionCollection;
    new-instance v0, Ljava/security/ProtectionDomain;

    .end local v0           #pd:Ljava/security/ProtectionDomain;
    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, p0, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    .line 158
    .restart local v0       #pd:Ljava/security/ProtectionDomain;
    iget-object v3, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v2

    move-object v2, v0

    .line 160
    goto :goto_3

    .line 159
    .end local v0           #pd:Ljava/security/ProtectionDomain;
    .end local v1           #perms:Ljava/security/PermissionCollection;
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v3
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .registers 10
    .parameter "name"
    .parameter "b"
    .parameter "cs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 135
    .local v2, data:[B
    if-nez p3, :cond_d

    array-length v0, v2

    invoke-virtual {p0, p1, v2, v3, v0}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    array-length v4, v2

    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_c
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .registers 12
    .parameter "name"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .parameter "cs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p5, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .parameter "codesource"

    .prologue
    .line 79
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
