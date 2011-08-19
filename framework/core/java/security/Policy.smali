.class public abstract Ljava/security/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Policy$Parameters;,
        Ljava/security/Policy$PolicyDelegate;
    }
.end annotation


# static fields
.field private static final CREATE_POLICY:Ljava/lang/String; = "createPolicy."

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final GET_POLICY:Ljava/security/SecurityPermission; = null

.field private static final POLICYSERVICE:Ljava/lang/String; = "Policy"

.field private static final POLICY_PROVIDER:Ljava/lang/String; = "policy.provider"

.field private static final SET_POLICY:Ljava/security/SecurityPermission;

.field public static final UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

.field private static activePolicy:Ljava/security/Policy;


# instance fields
.field private final params:Ljava/security/Policy$Parameters;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/PolicySpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "setPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Policy;->SET_POLICY:Ljava/security/SecurityPermission;

    .line 47
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Policy;->GET_POLICY:Ljava/security/SecurityPermission;

    .line 57
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Policy"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Policy;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    .line 290
    new-instance v0, Ljava/security/Policy$1;

    invoke-direct {v0}, Ljava/security/Policy$1;-><init>()V

    sput-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, v0, v0, v0}, Ljava/security/Policy;-><init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V
    .registers 5
    .parameter "spi"
    .parameter "p"
    .parameter "t"
    .parameter "para"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    .line 76
    iput-object p2, p0, Ljava/security/Policy;->provider:Ljava/security/Provider;

    .line 77
    iput-object p3, p0, Ljava/security/Policy;->type:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Ljava/security/Policy;->params:Ljava/security/Policy$Parameters;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Policy$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Policy;-><init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V

    return-void
.end method

.method private static checkSecurityPermission(Ljava/security/SecurityPermission;)V
    .registers 2
    .parameter "permission"

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 229
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 232
    :cond_9
    return-void
.end method

.method private defaultImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .registers 9
    .parameter "domain"
    .parameter "permission"

    .prologue
    .line 418
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 419
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 421
    :cond_a
    const/4 v2, 0x0

    .line 422
    .local v2, implies:Z
    if-eqz p1, :cond_2f

    .line 423
    invoke-virtual {p0, p1}, Ljava/security/Policy;->getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;

    move-result-object v4

    .line 424
    .local v4, total:Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v3

    .line 425
    .local v3, inherent:Ljava/security/PermissionCollection;
    if-eqz v3, :cond_2b

    .line 426
    invoke-virtual {v3}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 427
    .end local p0
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 428
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {v4, p0}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1b

    .line 432
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :cond_2b
    :try_start_2b
    invoke-virtual {v4, p2}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2e} :catch_30

    move-result v2

    .line 438
    .end local v3           #inherent:Ljava/security/PermissionCollection;
    .end local v4           #total:Ljava/security/PermissionCollection;
    :cond_2f
    :goto_2f
    return v2

    .line 433
    .restart local v3       #inherent:Ljava/security/PermissionCollection;
    .restart local v4       #total:Ljava/security/PermissionCollection;
    :catch_30
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method static getAccessiblePolicy()Ljava/security/Policy;
    .registers 2

    .prologue
    .line 511
    const-class v0, Ljava/security/Policy;

    monitor-enter v0

    .line 512
    :try_start_3
    sget-object v1, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    if-nez v1, :cond_d

    .line 513
    invoke-static {}, Ljava/security/Policy;->getDefaultProvider()Ljava/security/Policy;

    move-result-object v1

    sput-object v1, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    .line 515
    :cond_d
    sget-object v1, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    monitor-exit v0

    return-object v1

    .line 516
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static getDefaultProvider()Ljava/security/Policy;
    .registers 3

    .prologue
    .line 465
    new-instance v1, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const-string v2, "policy.provider"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, defaultClass:Ljava/lang/String;
    if-nez v0, :cond_15

    .line 472
    new-instance v1, Lorg/apache/harmony/security/fortress/DefaultPolicy;

    invoke-direct {v1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>()V

    .line 476
    .end local v0           #defaultClass:Ljava/lang/String;
    :goto_14
    return-object v1

    .restart local v0       #defaultClass:Ljava/lang/String;
    :cond_15
    new-instance v1, Ljava/security/Policy$2;

    invoke-direct {v1, v0}, Ljava/security/Policy$2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #defaultClass:Ljava/lang/String;
    check-cast v0, Ljava/security/Policy;

    move-object v1, v0

    goto :goto_14
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;)Ljava/security/Policy;
    .registers 7
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/security/SecurityPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPolicy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/Policy;->checkSecurityPermission(Ljava/security/SecurityPermission;)V

    .line 124
    if-nez p0, :cond_23

    .line 125
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 129
    :cond_23
    :try_start_23
    sget-object v2, Ljava/security/Policy;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 130
    .local v1, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v3, Ljava/security/Policy$PolicyDelegate;

    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/PolicySpi;

    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0, p1}, Ljava/security/Policy$PolicyDelegate;-><init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_34} :catch_35

    return-object v3

    .line 131
    .end local v1           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_35
    move-exception v2

    move-object v0, v2

    .line 132
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 133
    throw v0

    .line 135
    :cond_3e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized policy parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/lang/String;)Ljava/security/Policy;
    .registers 7
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 175
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 176
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_10
    new-instance v1, Ljava/security/SecurityPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPolicy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/Policy;->checkSecurityPermission(Ljava/security/SecurityPermission;)V

    .line 180
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 181
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_50

    .line 182
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_50
    invoke-static {p0, p1, v0}, Ljava/security/Policy;->getInstanceImpl(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;
    .registers 6
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p2, :cond_a

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_a
    new-instance v0, Ljava/security/SecurityPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPolicy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/Policy;->checkSecurityPermission(Ljava/security/SecurityPermission;)V

    .line 224
    invoke-static {p0, p1, p2}, Ljava/security/Policy;->getInstanceImpl(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;

    move-result-object v0

    return-object v0
.end method

.method private static getInstanceImpl(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;
    .registers 8
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 236
    if-nez p0, :cond_8

    .line 237
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 241
    :cond_8
    :try_start_8
    sget-object v2, Ljava/security/Policy;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p2, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, spi:Ljava/lang/Object;
    new-instance v2, Ljava/security/Policy$PolicyDelegate;

    check-cast v1, Ljava/security/PolicySpi;

    .end local v1           #spi:Ljava/lang/Object;
    invoke-direct {v2, v1, p2, p0, p1}, Ljava/security/Policy$PolicyDelegate;-><init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_15} :catch_16

    return-object v2

    .line 243
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 244
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 245
    throw v0

    .line 247
    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized policy parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getPolicy()Ljava/security/Policy;
    .registers 1

    .prologue
    .line 456
    sget-object v0, Ljava/security/Policy;->GET_POLICY:Ljava/security/SecurityPermission;

    invoke-static {v0}, Ljava/security/Policy;->checkSecurityPermission(Ljava/security/SecurityPermission;)V

    .line 457
    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v0

    return-object v0
.end method

.method static isSet()Z
    .registers 2

    .prologue
    .line 499
    const-class v0, Ljava/security/Policy;

    monitor-enter v0

    .line 500
    :try_start_3
    sget-object v1, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_8
    monitor-exit v0

    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    .line 501
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static setPolicy(Ljava/security/Policy;)V
    .registers 3
    .parameter "policy"

    .prologue
    .line 533
    sget-object v0, Ljava/security/Policy;->SET_POLICY:Ljava/security/SecurityPermission;

    invoke-static {v0}, Ljava/security/Policy;->checkSecurityPermission(Ljava/security/SecurityPermission;)V

    .line 534
    const-class v0, Ljava/security/Policy;

    monitor-enter v0

    .line 535
    :try_start_8
    sput-object p0, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    .line 536
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public getParameters()Ljava/security/Policy$Parameters;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Ljava/security/Policy;->params:Ljava/security/Policy$Parameters;

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .parameter "cs"

    .prologue
    .line 344
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    if-nez v0, :cond_7

    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    invoke-virtual {v0, p1}, Ljava/security/PolicySpi;->engineGetPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    goto :goto_6
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 8
    .parameter "domain"

    .prologue
    .line 373
    new-instance v4, Ljava/security/Permissions;

    invoke-direct {v4}, Ljava/security/Permissions;-><init>()V

    .line 374
    .local v4, permissions:Ljava/security/Permissions;
    if-eqz p1, :cond_42

    .line 376
    :try_start_7
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/security/Policy;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 378
    .local v0, cds:Ljava/security/PermissionCollection;
    sget-object v5, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    if-eq v0, v5, :cond_28

    .line 379
    invoke-virtual {v0}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 380
    .end local p0
    .local v1, elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 381
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {v4, p0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_17

    .line 384
    .end local v0           #cds:Ljava/security/PermissionCollection;
    .end local v1           #elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :catch_27
    move-exception v5

    .line 388
    :cond_28
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v3

    .line 389
    .local v3, pds:Ljava/security/PermissionCollection;
    if-eqz v3, :cond_42

    .line 390
    invoke-virtual {v3}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 391
    .local v2, pdElements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :goto_32
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 392
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {v4, p0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_32

    .line 396
    .end local v2           #pdElements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    .end local v3           #pds:Ljava/security/PermissionCollection;
    :cond_42
    return-object v4
.end method

.method public getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljava/security/Policy;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Ljava/security/Policy;->type:Ljava/lang/String;

    return-object v0
.end method

.method public implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .registers 4
    .parameter "domain"
    .parameter "permission"

    .prologue
    .line 413
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2}, Ljava/security/Policy;->defaultImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/PolicySpi;->engineImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z

    move-result v0

    goto :goto_8
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Ljava/security/Policy;->spiImpl:Ljava/security/PolicySpi;

    invoke-virtual {v0}, Ljava/security/PolicySpi;->engineRefresh()V

    .line 355
    :cond_9
    return-void
.end method
