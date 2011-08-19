.class public Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;
.super Ljava/lang/Object;
.source "BaseBoxFactory.java"


# static fields
.field private static final CONFIG:Ljava/util/Properties; = null

.field private static defaultConfig:Ljava/util/Properties; = null

.field protected static final logTag:Ljava/lang/String; = "BoxExternalAPI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getConfig()Ljava/util/Properties;

    move-result-object v0

    .line 31
    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->CONFIG:Ljava/util/Properties;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultImpl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "interfaceKey"

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, obj:Ljava/lang/Object;
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    if-nez v5, :cond_0

    .line 73
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    sput-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    .line 74
    const-class v5, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    .line 75
    const-string v6, "box4j-config-default.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 77
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v3           #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    sget-object v5, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->defaultConfig:Ljava/util/Properties;

    invoke-virtual {v5, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, implString:Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 95
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v4           #obj:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 78
    .end local v2           #implString:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 79
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #implString:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 89
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 91
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 93
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "error!!! "

    invoke-static {v5, v6, v1}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected static newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "interfaceKey"

    .prologue
    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, obj:Ljava/lang/Object;
    sget-object v4, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->CONFIG:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, clazz:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 59
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_0
    if-nez v3, :cond_0

    .line 60
    invoke-static {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;->getDefaultImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #obj:Ljava/lang/Object;
    move-object v4, v3

    .line 62
    .end local v3           #obj:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 49
    .restart local v3       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 50
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClassNotFoundException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Lcom/infraware/common/CoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 53
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InstantiationException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v4, v5}, Lcom/infraware/common/CoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 56
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IllegalAccessException, will use default implementation. (interfaceKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lcom/infraware/common/CoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_0
    move-object v4, v3

    goto :goto_1
.end method
