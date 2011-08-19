.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final PKG_ACC_KEY:Ljava/lang/String; = "package.access"

.field private static final PKG_DEF_KEY:Ljava/lang/String; = "package.definition"

.field private static final READ_WRITE_ALL_PROPERTIES_PERMISSION:Ljava/util/PropertyPermission;


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/PropertyPermission;

    const-string v1, "*"

    const-string v2, "read,write"

    invoke-direct {v0, v1, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/SecurityManager;->READ_WRITE_ALL_PROPERTIES_PERMISSION:Ljava/util/PropertyPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 79
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 80
    sget-object v2, Ljava/lang/RuntimePermission;->permissionToCreateSecurityManager:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 83
    :cond_e
    const-class v1, Ljava/security/Security;

    .line 84
    .local v1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_18

    .line 85
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 87
    :cond_18
    return-void
.end method

.method private static checkPackageProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "property"
    .parameter "pkg"

    .prologue
    const/16 v10, 0x2e

    const/4 v9, 0x1

    .line 414
    invoke-static {p0}, Lorg/apache/harmony/luni/util/PriviAction;->getSecurityProperty(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v8

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    .local v3, list:Ljava/lang/String;
    if-eqz v3, :cond_5d

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 418
    .local v4, plen:I
    const-string v8, ", *"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, tokens:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1c
    if-ge v1, v2, :cond_5d

    aget-object v6, v0, v1

    .line 420
    .local v6, token:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 421
    .local v5, tlen:I
    if-le v4, v5, :cond_3c

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    sub-int v8, v5, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_3c

    :cond_3a
    move v8, v9

    .line 434
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #plen:I
    .end local v5           #tlen:I
    .end local v6           #token:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :goto_3b
    return v8

    .line 425
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #plen:I
    .restart local v5       #tlen:I
    .restart local v6       #token:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :cond_3c
    if-ne v4, v5, :cond_46

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_46

    move v8, v9

    .line 426
    goto :goto_3b

    .line 427
    :cond_46
    add-int/lit8 v8, v4, 0x1

    if-ne v8, v5, :cond_5a

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    sub-int v8, v5, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_5a

    move v8, v9

    .line 429
    goto :goto_3b

    .line 419
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 434
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #plen:I
    .end local v5           #tlen:I
    .end local v6           #token:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :cond_5d
    const/4 v8, 0x0

    goto :goto_3b
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "port"

    .prologue
    .line 104
    if-nez p1, :cond_8

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_8
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 108
    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .registers 4
    .parameter "thread"

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 122
    .local v0, group:Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_f

    iget-object v1, v0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v1, :cond_f

    .line 123
    sget-object v1, Ljava/lang/RuntimePermission;->permissionToModifyThread:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 125
    :cond_f
    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 140
    if-nez p1, :cond_8

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_8
    iget-object v0, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v0, :cond_11

    .line 144
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToModifyThreadGroup:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 146
    :cond_11
    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .registers 7

    .prologue
    .line 602
    :try_start_0
    const-string v3, "java.awt.AWTPermission"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 603
    .local v0, awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 605
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessEventQueue"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 606
    .local v2, perm:Ljava/lang/Object;
    check-cast v2, Ljava/security/Permission;

    .end local v2           #perm:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_24

    .line 607
    return-void

    .line 612
    .end local v0           #awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_24
    move-exception v3

    .line 614
    :goto_25
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3

    .line 611
    :catch_2b
    move-exception v3

    goto :goto_25

    .line 610
    :catch_2d
    move-exception v3

    goto :goto_25

    .line 609
    :catch_2f
    move-exception v3

    goto :goto_25

    .line 608
    :catch_31
    move-exception v3

    goto :goto_25
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "port"

    .prologue
    .line 164
    if-nez p1, :cond_8

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    :cond_8
    if-lez p2, :cond_2c

    .line 168
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 172
    :goto_2b
    return-void

    .line 170
    :cond_2c
    new-instance v0, Ljava/net/SocketPermission;

    const-string v1, "resolve"

    invoke-direct {v0, p1, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2b
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "context"

    .prologue
    .line 193
    if-nez p1, :cond_8

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 197
    :cond_8
    if-lez p2, :cond_2c

    .line 198
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V

    .line 203
    :goto_2b
    return-void

    .line 201
    :cond_2c
    new-instance v0, Ljava/net/SocketPermission;

    const-string v1, "resolve"

    invoke-direct {v0, p1, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method public checkCreateClassLoader()V
    .registers 2

    .prologue
    .line 213
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToCreateClassLoader:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 214
    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 226
    new-instance v0, Ljava/io/FilePermission;

    const-string v1, "delete"

    invoke-direct {v0, p1, v1}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 227
    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .registers 5
    .parameter "cmd"

    .prologue
    .line 239
    new-instance v0, Ljava/io/FilePermission;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, p1

    :goto_e
    const-string v2, "execute"

    invoke-direct {v0, v1, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 241
    return-void

    .line 239
    :cond_17
    const-string v1, "<<ALL FILES>>"

    goto :goto_e
.end method

.method public checkExit(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 255
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToExitVM:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 256
    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .registers 5
    .parameter "libName"

    .prologue
    .line 268
    if-nez p1, :cond_8

    .line 269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 271
    :cond_8
    new-instance v0, Ljava/lang/RuntimePermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 272
    return-void
.end method

.method public checkListen(I)V
    .registers 5
    .parameter "port"

    .prologue
    .line 284
    if-nez p1, :cond_f

    .line 285
    new-instance v0, Ljava/net/SocketPermission;

    const-string v1, "localhost:1024-"

    const-string v2, "listen"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 289
    :goto_e
    return-void

    .line 287
    :cond_f
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localhost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listen"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_e
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .registers 5
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_8

    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 314
    :cond_8
    if-nez p2, :cond_b

    .line 333
    :cond_a
    :goto_a
    return-void

    .line 327
    :cond_b
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/ClassLoader;->getStackClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 332
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "accessDeclaredMembers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_a
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "maddr"

    .prologue
    .line 345
    new-instance v0, Ljava/net/SocketPermission;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept,connect"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 347
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .registers 6
    .parameter "maddr"
    .parameter "ttl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/net/SocketPermission;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept,connect"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 366
    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 379
    if-nez p1, :cond_8

    .line 380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    :cond_8
    const-string v0, "package.access"

    invoke-static {v0, p1}, Ljava/lang/SecurityManager;->checkPackageProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 383
    new-instance v0, Ljava/lang/RuntimePermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessClassInPackage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 386
    :cond_2b
    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 399
    if-nez p1, :cond_8

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_8
    const-string v0, "package.definition"

    invoke-static {v0, p1}, Ljava/lang/SecurityManager;->checkPackageProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 403
    new-instance v0, Ljava/lang/RuntimePermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defineClassInPackage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 406
    :cond_2b
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .registers 4
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 871
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    .line 872
    invoke-static {p1}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    .line 874
    iput-boolean v1, p0, Ljava/lang/SecurityManager;->inCheck:Z

    .line 876
    return-void

    .line 874
    :catchall_a
    move-exception v0

    iput-boolean v1, p0, Ljava/lang/SecurityManager;->inCheck:Z

    throw v0
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .registers 5
    .parameter "permission"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 894
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    .line 898
    instance-of v0, p2, Ljava/security/AccessControlContext;

    if-eqz v0, :cond_10

    .line 899
    check-cast p2, Ljava/security/AccessControlContext;

    .end local p2
    invoke-virtual {p2, p1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_16

    .line 904
    iput-boolean v1, p0, Ljava/lang/SecurityManager;->inCheck:Z

    .line 906
    return-void

    .line 901
    .restart local p2
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_16

    .line 904
    .end local p2
    :catchall_16
    move-exception v0

    iput-boolean v1, p0, Ljava/lang/SecurityManager;->inCheck:Z

    throw v0
.end method

.method public checkPrintJobAccess()V
    .registers 2

    .prologue
    .line 625
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToQueuePrintJob:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 626
    return-void
.end method

.method public checkPropertiesAccess()V
    .registers 2

    .prologue
    .line 446
    sget-object v0, Ljava/lang/SecurityManager;->READ_WRITE_ALL_PROPERTIES_PERMISSION:Ljava/util/PropertyPermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 447
    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 460
    new-instance v0, Ljava/util/PropertyPermission;

    const-string v1, "read"

    invoke-direct {v0, p1, v1}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 461
    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "fd"

    .prologue
    .line 473
    if-nez p1, :cond_8

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 476
    :cond_8
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToReadFileDescriptor:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 477
    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 490
    new-instance v0, Ljava/io/FilePermission;

    const-string v1, "read"

    invoke-direct {v0, p1, v1}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 491
    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "file"
    .parameter "context"

    .prologue
    .line 505
    new-instance v0, Ljava/io/FilePermission;

    const-string v1, "read"

    invoke-direct {v0, p1, v1}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 519
    new-instance v0, Ljava/security/SecurityPermission;

    invoke-direct {v0, p1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 520
    return-void
.end method

.method public checkSetFactory()V
    .registers 2

    .prologue
    .line 531
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToSetFactory:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 532
    return-void
.end method

.method public checkSystemClipboardAccess()V
    .registers 7

    .prologue
    .line 577
    :try_start_0
    const-string v3, "java.awt.AWTPermission"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 578
    .local v0, awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 580
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessClipboard"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 581
    .local v2, perm:Ljava/lang/Object;
    check-cast v2, Ljava/security/Permission;

    .end local v2           #perm:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_24

    .line 582
    return-void

    .line 587
    .end local v0           #awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_24
    move-exception v3

    .line 589
    :goto_25
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3

    .line 586
    :catch_2b
    move-exception v3

    goto :goto_25

    .line 585
    :catch_2d
    move-exception v3

    goto :goto_25

    .line 584
    :catch_2f
    move-exception v3

    goto :goto_25

    .line 583
    :catch_31
    move-exception v3

    goto :goto_25
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .registers 11
    .parameter "window"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 546
    if-nez p1, :cond_a

    .line 547
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 550
    :cond_a
    :try_start_a
    const-string v4, "java.awt.AWTPermission"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 551
    .local v0, awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 553
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "showWindowWithoutWarningBanner"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 555
    .local v3, perm:Ljava/lang/Object;
    check-cast v3, Ljava/security/Permission;

    .end local v3           #perm:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_2d} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_2d} :catch_39
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_2d} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2d} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_2d} :catch_33
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_2d} :catch_2f

    .end local v0           #awtPermission:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_2d
    move v4, v8

    .line 564
    :goto_2e
    return v4

    .line 561
    :catch_2f
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/SecurityException;
    move v4, v7

    .line 562
    goto :goto_2e

    .line 560
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_33
    move-exception v4

    goto :goto_2d

    .line 559
    :catch_35
    move-exception v4

    goto :goto_2d

    .line 558
    :catch_37
    move-exception v4

    goto :goto_2d

    .line 557
    :catch_39
    move-exception v4

    goto :goto_2d

    .line 556
    :catch_3b
    move-exception v4

    goto :goto_2d
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "fd"

    .prologue
    .line 638
    if-nez p1, :cond_8

    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_8
    sget-object v0, Ljava/lang/RuntimePermission;->permissionToWriteFileDescriptor:Ljava/lang/RuntimePermission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 642
    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 655
    new-instance v0, Ljava/io/FilePermission;

    const-string v1, "write"

    invoke-direct {v0, p1, v1}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 656
    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .registers 6
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 799
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/lang/Class;->getStackClasses(IZ)[Ljava/lang/Class;

    move-result-object v0

    .line 800
    .local v0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 801
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    .line 805
    :goto_17
    return v2

    .line 800
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    move v2, v3

    .line 805
    goto :goto_17
.end method

.method protected classLoaderDepth()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 733
    :try_start_1
    new-instance v3, Ljava/security/AllPermission;

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move v3, v4

    .line 749
    :goto_a
    return v3

    .line 735
    :catch_b
    move-exception v3

    .line 742
    const/4 v3, 0x1

    invoke-static {v4, v3}, Ljava/lang/Class;->getStackClasses(IZ)[Ljava/lang/Class;

    move-result-object v1

    .line 743
    .local v1, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_26

    .line 744
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 745
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->isSystemClassLoader()Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v2

    .line 746
    goto :goto_a

    .line 743
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_26
    move v3, v4

    .line 749
    goto :goto_a
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 698
    :try_start_1
    new-instance v3, Ljava/security/AllPermission;

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v3, v5

    .line 714
    :goto_a
    return-object v3

    .line 700
    :catch_b
    move-exception v3

    .line 707
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Class;->getStackClasses(IZ)[Ljava/lang/Class;

    move-result-object v1

    .line 708
    .local v1, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 709
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 710
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->isSystemClassLoader()Z

    move-result v3

    if-nez v3, :cond_24

    move-object v3, v0

    .line 711
    goto :goto_a

    .line 708
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_27
    move-object v3, v5

    .line 714
    goto :goto_a
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 767
    :try_start_1
    new-instance v3, Ljava/security/AllPermission;

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v3, v5

    .line 783
    :goto_a
    return-object v3

    .line 769
    :catch_b
    move-exception v3

    .line 776
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Class;->getStackClasses(IZ)[Ljava/lang/Class;

    move-result-object v1

    .line 777
    .local v1, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 778
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 779
    .local v0, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->isSystemClassLoader()Z

    move-result v3

    if-nez v3, :cond_25

    .line 780
    aget-object v3, v1, v2

    goto :goto_a

    .line 777
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_28
    move-object v3, v5

    .line 783
    goto :goto_a
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .registers 3

    .prologue
    .line 679
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getInCheck()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 856
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 844
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Ljava/lang/SecurityManager;->classDepth(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected inClassLoader()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/lang/SecurityManager;->currentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
