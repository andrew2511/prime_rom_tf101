.class public Lcom/android/vending/model/ApiDefsMessageTypesRegistry;
.super Ljava/lang/Object;
.source "ApiDefsMessageTypesRegistry.java"


# static fields
.field private static sNameToProtoRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/io/protocol/ProtoBufType;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtoToNameRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/io/protocol/ProtoBufType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtoBufName(Lcom/google/common/io/protocol/ProtoBufType;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 46
    invoke-static {}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->initializeIfNecessary()V

    .line 47
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sProtoToNameRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProtoBufType(Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBufType;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    invoke-static {}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->initializeIfNecessary()V

    .line 35
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sNameToProtoRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBufType;

    return-object p0
.end method

.method private static declared-synchronized initializeIfNecessary()V
    .locals 7

    .prologue
    .line 52
    const-class v1, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sNameToProtoRegistry:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sNameToProtoRegistry:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sProtoToNameRegistry:Ljava/util/Map;

    .line 56
    const-class v0, Lcom/android/vending/model/ApiDefsMessageTypes;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 58
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    .line 64
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v0, v5}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->registerProtoBufType(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->insertEmbeddedTypes(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing the object for field:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing the object for field:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inserting embedded types:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :catch_3
    move-exception v0

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inserting embedded types:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 86
    :cond_1
    monitor-exit v1

    return-void
.end method

.method private static insertEmbeddedTypes(Lcom/google/common/io/protocol/ProtoBufType;)V
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, tagIndex:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v2

    .line 105
    .local v2, tagType:I
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 115
    return-void

    .line 109
    :cond_0
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    .line 111
    .local v0, childType:Lcom/google/common/io/protocol/ProtoBufType;
    invoke-virtual {v0}, Lcom/google/common/io/protocol/ProtoBufType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->registerProtoBufType(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->insertEmbeddedTypes(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 103
    .end local v0           #childType:Lcom/google/common/io/protocol/ProtoBufType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static registerProtoBufType(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;)V
    .locals 3
    .parameter "protoBufType"
    .parameter "name"

    .prologue
    .line 89
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sNameToProtoRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProtoBufType with name already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sNameToProtoRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->sProtoToNameRegistry:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method
