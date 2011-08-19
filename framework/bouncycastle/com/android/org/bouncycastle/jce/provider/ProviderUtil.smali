.class public Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# static fields
.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;

.field private static final MAX_MEMORY:J

.field private static volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private static threadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 76
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 78
    .local v0, spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 83
    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_b
.end method

.method static getReadLimit(Ljava/io/InputStream;)I
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 99
    :goto_8
    return v0

    .line 94
    :cond_9
    sget-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 96
    const v0, 0x7fffffff

    goto :goto_8

    .line 99
    :cond_16
    sget-wide v0, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_8
.end method

.method static setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "parameterName"
    .parameter "parameter"

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 29
    .local v2, securityManager:Ljava/lang/SecurityManager;
    const-string v3, "threadLocalEcImplicitlyCa"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 33
    if-eqz v2, :cond_14

    .line 35
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 38
    :cond_14
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_1a

    if-nez p1, :cond_26

    .line 40
    :cond_1a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-object v1, v0

    .line 47
    .end local p1
    .local v1, curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_1e
    if-nez v1, :cond_2d

    .line 49
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 72
    .end local v1           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_25
    :goto_25
    return-void

    .line 44
    .restart local p1
    :cond_26
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .restart local v1       #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_1e

    .line 53
    :cond_2d
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_25

    .line 56
    .end local v1           #curveSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p1
    :cond_33
    const-string v3, "ecImplicitlyCa"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 58
    if-eqz v2, :cond_42

    .line 60
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 63
    :cond_42
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_48

    if-nez p1, :cond_4d

    .line 65
    :cond_48
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .end local p1
    sput-object p1, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_25

    .line 69
    .restart local p1
    :cond_4d
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .end local p1
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    sput-object v3, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_25
.end method
