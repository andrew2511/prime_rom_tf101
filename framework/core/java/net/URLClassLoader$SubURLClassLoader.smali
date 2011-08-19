.class Ljava/net/URLClassLoader$SubURLClassLoader;
.super Ljava/net/URLClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubURLClassLoader"
.end annotation


# instance fields
.field private checkingPackageAccess:Z


# direct methods
.method constructor <init>([Ljava/net/URL;)V
    .registers 3
    .parameter "urls"

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    .line 74
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "urls"
    .parameter "parent"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 7
    .parameter "className"
    .parameter "resolveClass"
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
    .line 97
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 98
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_21

    iget-boolean v2, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    if-nez v2, :cond_21

    .line 99
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2c

    move-result v0

    .line 100
    .local v0, index:I
    if-lez v0, :cond_21

    .line 102
    const/4 v2, 0x1

    :try_start_14
    iput-boolean v2, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_27

    .line 105
    const/4 v2, 0x0

    :try_start_1f
    iput-boolean v2, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    .line 109
    .end local v0           #index:I
    :cond_21
    invoke-super {p0, p1, p2}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2c

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 105
    .restart local v0       #index:I
    :catchall_27
    move-exception v2

    const/4 v3, 0x0

    :try_start_29
    iput-boolean v3, p0, Ljava/net/URLClassLoader$SubURLClassLoader;->checkingPackageAccess:Z

    throw v2
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    .line 97
    .end local v0           #index:I
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method
