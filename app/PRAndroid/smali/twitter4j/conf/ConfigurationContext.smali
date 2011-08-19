.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"


# static fields
.field public static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"

.field public static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"

.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 43
    :try_start_0
    const-string v5, "twitter4j.configurationFactory"

    const-string v6, "twitter4j.conf.PropertyConfigurationFactory"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    .local v0, CONFIG_IMPL:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CONFIG_IMPL:Ljava/lang/String;
    check-cast v0, Ltwitter4j/conf/ConfigurationFactory;

    sput-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 58
    return-void

    .line 44
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 46
    .local v4, ignore:Ljava/lang/SecurityException;
    const-string v0, "twitter4j.conf.PropertyConfigurationFactory"

    .restart local v0       #CONFIG_IMPL:Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0           #CONFIG_IMPL:Ljava/lang/String;
    .end local v4           #ignore:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 52
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 53
    .end local v1           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 54
    .local v3, ie:Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 55
    .end local v3           #ie:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 56
    .local v2, iae:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1
    .parameter "configTreePath"

    .prologue
    .line 65
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0, p0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method
