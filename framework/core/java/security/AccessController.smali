.class public final Ljava/security/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# static fields
.field private static final contexts:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/AccessControlContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string v1, "statics only."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPermission(Ljava/security/Permission;)V
    .registers 3
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p0, :cond_a

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "permission == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_a
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 263
    return-void
.end method

.method private static contextsForThread()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 217
    .local v0, currThread:Ljava/lang/Thread;
    if-eqz v0, :cond_a

    sget-object v2, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    if-nez v2, :cond_10

    .line 218
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :goto_f
    return-object v2

    .line 221
    :cond_10
    sget-object v2, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 222
    :try_start_13
    sget-object v3, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 223
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    if-nez v1, :cond_27

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    sget-object v3, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_27
    monitor-exit v2

    move-object v2, v1

    goto :goto_f

    .line 228
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_a

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    const/4 v3, 0x1

    .line 110
    if-nez p0, :cond_b

    .line 111
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "action == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_b
    invoke-static {}, Ljava/security/AccessController;->contextsForThread()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :try_start_12
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    move-result-object v1

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    throw v1
.end method

.method public static doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    const/4 v4, 0x1

    .line 176
    if-nez p0, :cond_b

    .line 177
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "action == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_b
    invoke-static {}, Ljava/security/AccessController;->contextsForThread()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :try_start_12
    invoke-interface {p0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_21
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_2b

    move-result-object v2

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v2

    .line 183
    :catch_1f
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_20
    throw v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 188
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_21
    move-exception v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    throw v2

    .line 185
    :catch_2b
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/Exception;
    :try_start_2c
    new-instance v2, Ljava/security/PrivilegedActionException;

    invoke-direct {v2, v1}, Ljava/security/PrivilegedActionException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_21
.end method

.method public static doPrivilegedWithCombiner(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->newContextSameDomainCombiner()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivilegedWithCombiner(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->newContextSameDomainCombiner()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Ljava/security/AccessControlContext;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 288
    invoke-static {}, Ljava/security/AccessController;->getStackDomains()[Ljava/security/ProtectionDomain;

    move-result-object v3

    .line 290
    .local v3, stack:[Ljava/security/ProtectionDomain;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 291
    .local v1, currentThread:Ljava/lang/Thread;
    if-eqz v1, :cond_f

    sget-object v6, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    if-nez v6, :cond_15

    .line 293
    :cond_f
    new-instance v6, Ljava/security/AccessControlContext;

    invoke-direct {v6, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 316
    :goto_14
    return-object v6

    .line 296
    :cond_15
    invoke-static {}, Ljava/security/AccessController;->contextsForThread()Ljava/util/List;

    move-result-object v5

    .line 299
    .local v5, threadContexts:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/SecurityUtils;->getContext(Ljava/lang/Thread;)Ljava/security/AccessControlContext;

    move-result-object v6

    move-object v4, v6

    .line 303
    .local v4, that:Ljava/security/AccessControlContext;
    :goto_24
    if-eqz v4, :cond_5f

    iget-object v6, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-eqz v6, :cond_5f

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, assigned:[Ljava/security/ProtectionDomain;
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    if-eqz v6, :cond_3f

    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v6, v6

    if-eqz v6, :cond_3f

    .line 306
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v6, v6

    new-array v0, v6, [Ljava/security/ProtectionDomain;

    .line 307
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v7, v0

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_3f
    iget-object v6, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-interface {v6, v3, v0}, Ljava/security/DomainCombiner;->combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;

    move-result-object v2

    .line 310
    .local v2, protectionDomains:[Ljava/security/ProtectionDomain;
    if-nez v2, :cond_49

    .line 311
    new-array v2, v8, [Ljava/security/ProtectionDomain;

    .line 313
    :cond_49
    new-instance v6, Ljava/security/AccessControlContext;

    iget-object v7, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-direct {v6, v2, v7}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;)V

    goto :goto_14

    .line 299
    .end local v0           #assigned:[Ljava/security/ProtectionDomain;
    .end local v2           #protectionDomains:[Ljava/security/ProtectionDomain;
    .end local v4           #that:Ljava/security/AccessControlContext;
    :cond_51
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    move-object v4, v0

    goto :goto_24

    .line 316
    .restart local v4       #that:Ljava/security/AccessControlContext;
    :cond_5f
    new-instance v6, Ljava/security/AccessControlContext;

    invoke-direct {v6, v3, v4}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;Ljava/security/AccessControlContext;)V

    goto :goto_14
.end method

.method private static native getStackDomains()[Ljava/security/ProtectionDomain;
.end method

.method private static newContextSameDomainCombiner()Ljava/security/AccessControlContext;
    .registers 4

    .prologue
    .line 202
    invoke-static {}, Ljava/security/AccessController;->contextsForThread()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    move-object v1, v2

    .line 206
    .end local v0           #contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    .local v1, domainCombiner:Ljava/security/DomainCombiner;
    :goto_c
    new-instance v2, Ljava/security/AccessControlContext;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/security/ProtectionDomain;

    invoke-direct {v2, v3, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;)V

    return-object v2

    .line 203
    .end local v1           #domainCombiner:Ljava/security/DomainCombiner;
    .restart local v0       #contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contextsStack:Ljava/util/List;,"Ljava/util/List<Ljava/security/AccessControlContext;>;"
    check-cast v0, Ljava/security/AccessControlContext;

    invoke-virtual {v0}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    move-result-object v2

    move-object v1, v2

    goto :goto_c
.end method
