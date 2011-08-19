.class public abstract Ljava/lang/ClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassLoader$SystemClassLoader;
    }
.end annotation


# instance fields
.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/ClassLoader;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "parentLoader"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 211
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .registers 6
    .parameter "parentLoader"
    .parameter "nullAllowed"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    .line 217
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 218
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 219
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 222
    :cond_13
    if-nez p1, :cond_1f

    if-nez p2, :cond_1f

    .line 223
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parent ClassLoader may not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_1f
    iput-object p1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 228
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static createSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 103
    const-string v1, "java.class.path"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, classPath:Ljava/lang/String;
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method static getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .parameter "loader"
    .parameter "name"

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static final getStackClassLoader(I)Ljava/lang/ClassLoader;
    .registers 4
    .parameter "depth"

    .prologue
    .line 803
    add-int/lit8 v1, p0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v0

    .line 804
    .local v0, stack:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v1, v0

    add-int/lit8 v2, p0, 0x1

    if-ge v1, v2, :cond_e

    .line 805
    const/4 v1, 0x0

    .line 807
    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_d
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 2
    .parameter "resName"

    .prologue
    .line 152
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .parameter "resName"

    .prologue
    .line 183
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static loadLibraryWithClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "libName"
    .parameter "loader"

    .prologue
    .line 831
    return-void
.end method

.method static loadLibraryWithPath(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter "libName"
    .parameter "loader"
    .parameter "libraryPath"

    .prologue
    .line 855
    return-void
.end method


# virtual methods
.method public clearAssertionStatus()V
    .registers 1

    .prologue
    .line 913
    return-void
.end method

.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 10
    .parameter "name"
    .parameter "b"
    .parameter "protectionDomain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 348
    .local v2, temp:[B
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 349
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .registers 11
    .parameter "className"
    .parameter "classRep"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 7
    .parameter "className"
    .parameter "classRep"
    .parameter "offset"
    .parameter "length"
    .parameter "protectionDomain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static/range {p0 .. p5}, Ljava/lang/VMClassLoader;->defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final defineClass([BII)Ljava/lang/Class;
    .registers 5
    .parameter "classRep"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/VMClassLoader;->defineClass(Ljava/lang/ClassLoader;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .registers 19
    .parameter "name"
    .parameter "specTitle"
    .parameter "specVersion"
    .parameter "specVendor"
    .parameter "implTitle"
    .parameter "implVersion"
    .parameter "implVendor"
    .parameter "sealBase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v9, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    monitor-enter v9

    .line 734
    :try_start_3
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 735
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :catchall_2a
    move-exception v1

    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1

    .line 738
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/lang/Package;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 741
    .local v0, newPackage:Ljava/lang/Package;
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_2a

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "libName"

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v1

    if-ne p0, v1, :cond_c

    .line 379
    const/4 v0, 0x0

    .line 382
    .local v0, loader:Ljava/lang/ClassLoader;
    :goto_7
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 381
    .end local v0           #loader:Ljava/lang/ClassLoader;
    :cond_c
    move-object v0, p0

    .restart local v0       #loader:Ljava/lang/ClassLoader;
    goto :goto_7
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "resName"

    .prologue
    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected final findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getClassAssertionStatus(Ljava/lang/String;)Z
    .registers 3
    .parameter "cname"

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultAssertionStatus()Z
    .registers 2

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 4
    .parameter "name"

    .prologue
    .line 669
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    monitor-enter v0

    .line 670
    :try_start_3
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Package;

    monitor-exit v0

    return-object p0

    .line 671
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getPackageAssertionStatus(Ljava/lang/String;)Z
    .registers 3
    .parameter "pname"

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method protected getPackages()[Ljava/lang/Package;
    .registers 5

    .prologue
    .line 695
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    monitor-enter v2

    .line 696
    :try_start_3
    iget-object v3, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 697
    .local v0, col:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Package;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/Package;

    .line 698
    .local v1, result:[Ljava/lang/Package;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 699
    monitor-exit v2

    return-object v1

    .line 700
    .end local v0           #col:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Package;>;"
    .end local v1           #result:[Ljava/lang/Package;
    :catchall_14
    move-exception v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v3
.end method

.method public final getParent()Ljava/lang/ClassLoader;
    .registers 4

    .prologue
    .line 408
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 409
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 410
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 413
    :cond_10
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .parameter "resName"

    .prologue
    .line 430
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 431
    .local v0, resource:Ljava/net/URL;
    if-nez v0, :cond_c

    .line 432
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 434
    :cond_c
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "resName"

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 474
    .local v0, url:Ljava/net/URL;
    if-eqz v0, :cond_c

    .line 475
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 481
    .end local v0           #url:Ljava/net/URL;
    :goto_a
    return-object v1

    .line 477
    :catch_b
    move-exception v1

    .line 481
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v2, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 454
    .local v0, first:Ljava/util/Enumeration;
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 456
    .local v1, second:Ljava/util/Enumeration;
    new-instance v2, Ljava/lang/TwoEnumerationsInOne;

    invoke-direct {v2, v0, v1}, Ljava/lang/TwoEnumerationsInOne;-><init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V

    return-object v2
.end method

.method final getSigners(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method final isAncestorOf(Ljava/lang/ClassLoader;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 602
    move-object v0, p1

    .local v0, current:Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_a

    .line 604
    if-ne v0, p0, :cond_7

    .line 605
    const/4 v1, 0x1

    .line 608
    :goto_6
    return v1

    .line 603
    :cond_7
    iget-object v0, v0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 608
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method

.method final isSystemClassLoader()Z
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .parameter "className"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 532
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_13

    .line 534
    :try_start_6
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_c} :catch_14

    move-result-object v0

    .line 539
    :goto_d
    if-nez v0, :cond_13

    .line 540
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 544
    :cond_13
    return-object v0

    .line 535
    :catch_14
    move-exception v1

    goto :goto_d
.end method

.method protected final resolveClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .parameter "cname"
    .parameter "enable"

    .prologue
    .line 871
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 901
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .parameter "pname"
    .parameter "enable"

    .prologue
    .line 887
    return-void
.end method

.method protected final setSigners(Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "signers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method
