.class Lorg/apache/xalan/extensions/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 11
    .parameter "className"
    .parameter "cl"
    .parameter "doFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 67
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_18

    .line 68
    :try_start_6
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, lastDot:I
    move-object v3, p0

    .line 70
    .local v3, packageName:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_15

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_15
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_18} :catch_1f

    .line 78
    .end local v2           #lastDot:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_18
    if-nez p1, :cond_22

    .line 88
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 110
    .local v4, providerClass:Ljava/lang/Class;
    :goto_1e
    return-object v4

    .line 73
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_1f
    move-exception v7

    move-object v1, v7

    .line 74
    .local v1, e:Ljava/lang/SecurityException;
    throw v1

    .line 91
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_22
    :try_start_22
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_25} :catch_27

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 92
    .end local v4           #providerClass:Ljava/lang/Class;
    :catch_27
    move-exception v6

    .line 93
    .local v6, x:Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_40

    .line 95
    const-class v7, Lorg/apache/xalan/extensions/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 96
    .local v0, current:Ljava/lang/ClassLoader;
    if-nez v0, :cond_37

    .line 97
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 98
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_37
    if-eq p1, v0, :cond_3f

    .line 99
    move-object p1, v0

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4       #providerClass:Ljava/lang/Class;
    goto :goto_1e

    .line 102
    .end local v4           #providerClass:Ljava/lang/Class;
    :cond_3f
    throw v6

    .line 105
    .end local v0           #current:Ljava/lang/ClassLoader;
    :cond_40
    throw v6
.end method
