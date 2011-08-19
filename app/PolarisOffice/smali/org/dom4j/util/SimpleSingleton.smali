.class public Lorg/dom4j/util/SimpleSingleton;
.super Ljava/lang/Object;
.source "SimpleSingleton.java"

# interfaces
.implements Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private singletonClassName:Ljava/lang/String;

.field private singletonInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 35
    iget-object v2, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, clazz:Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0       #clazz:Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 43
    .local v1, ignore:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/util/SimpleSingleton;->singletonInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setSingletonClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "singletonClassName"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/dom4j/util/SimpleSingleton;->singletonClassName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/dom4j/util/SimpleSingleton;->reset()V

    .line 55
    return-void
.end method
