.class public Lcom/google/api/client/json/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/Json$1;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lorg/codehaus/jackson/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method

.method public static parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 1
    .parameter "parser"
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 213
    return-object v0
.end method

.method public static parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 12
    .parameter "parser"
    .parameter "destination"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 228
    .local v1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v10

    .line 229
    .local v10, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-class v2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    .line 231
    .local v11, isGenericData:Z
    if-nez v11, :cond_2

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    check-cast p1, Ljava/util/Map;

    .line 234
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .end local v1           #destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 237
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v1, p2}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 273
    .end local v1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p1           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 255
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .local v2, curToken:Lorg/codehaus/jackson/JsonToken;
    .local p1, destination:Ljava/lang/Object;
    :cond_1
    iget-object v3, v1, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 256
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v4, v1, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    .end local v1           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    move-result-object v1

    .line 259
    .local v1, fieldValue:Ljava/lang/Object;
    invoke-static {v3, p1, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .end local v1           #fieldValue:Ljava/lang/Object;
    .end local v2           #curToken:Lorg/codehaus/jackson/JsonToken;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 244
    .restart local v2       #curToken:Lorg/codehaus/jackson/JsonToken;
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1, v3}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    :cond_3
    invoke-virtual {v10, v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    .line 249
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v1, :cond_4

    .line 251
    iget-boolean v3, v1, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    .end local v3           #key:Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-nez v3, :cond_1

    .line 252
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "final array/object fields are not supported"

    .end local p1           #destination:Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 260
    .restart local v3       #key:Ljava/lang/String;
    .restart local p0
    .restart local p1       #destination:Ljava/lang/Object;
    :cond_4
    if-eqz v11, :cond_5

    .line 262
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v1, v0

    .line 263
    .local v1, object:Lcom/google/api/client/util/GenericData;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, v2

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curToken:Lorg/codehaus/jackson/JsonToken;
    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .restart local v2       #curToken:Lorg/codehaus/jackson/JsonToken;
    :cond_5
    if-eqz p2, :cond_6

    .line 268
    invoke-virtual {p2, p1, v3}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_0
.end method

.method public static parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 1
    .parameter "parser"
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 151
    return-object v0
.end method

.method public static parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 1
    .parameter "parser"
    .parameter "destination"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    throw v0
.end method

.method public static parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .locals 1
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    .local p1, destinationCollectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, destinationItemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    .line 342
    .local v0, destinationCollection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {p0, v0, p2, p3}, Lcom/google/api/client/json/Json;->parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 344
    return-object v0
.end method

.method public static parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 7
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    .local p1, destinationCollection:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    .local p2, destinationItemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .local v1, listToken:Lorg/codehaus/jackson/JsonToken;
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v0, :cond_0

    .line 365
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v6

    .line 368
    .local v6, parsedValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v6           #parsedValue:Ljava/lang/Object;,"TT;"
    :cond_0
    return-void
.end method

.method public static parseArrayAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .locals 1
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .local p1, destinationCollectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, destinationItemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/api/client/json/Json;->parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    throw v0
.end method

.method public static parseArrayAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 1
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    .local p1, destinationCollection:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    .local p2, destinationItemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/api/client/json/Json;->parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    throw v0
.end method

.method private static parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 8
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 379
    .local v1, curToken:Lorg/codehaus/jackson/JsonToken;
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, v6}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    .end local v1           #curToken:Lorg/codehaus/jackson/JsonToken;
    .end local v6           #key:Ljava/lang/String;
    :cond_0
    return-void

    .line 383
    .restart local v1       #curToken:Lorg/codehaus/jackson/JsonToken;
    .restart local v6       #key:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v7

    .line 386
    .local v7, value:Ljava/lang/Object;
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 14
    .parameter "parser"
    .parameter "token"
    .parameter "field"
    .parameter
    .parameter "destination"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/JsonToken;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    .local p3, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v11, Lcom/google/api/client/json/Json$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 488
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": unexpected JSON node type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 395
    :pswitch_0
    if-eqz p3, :cond_0

    const-class v11, Ljava/util/Collection;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 397
    :cond_0
    const/4 v4, 0x0

    .line 398
    .local v4, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 399
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v4

    .line 402
    :cond_1
    if-nez v4, :cond_2

    .line 403
    invoke-static/range {p3 .. p3}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v4

    .line 405
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v9

    .line 406
    .local v9, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, p0

    move-object v1, v4

    move-object v2, v9

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/json/Json;->parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move-object v11, v4

    .line 486
    .end local v4           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v9           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v11

    .line 409
    :cond_3
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "expected field type that implements Collection but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 413
    :pswitch_1
    const/4 v8, 0x0

    .line 414
    .local v8, newInstance:Ljava/lang/Object;
    if-eqz p3, :cond_4

    const-class v11, Ljava/util/Map;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    const/4 v11, 0x1

    move v7, v11

    .line 416
    .local v7, isMap:Z
    :goto_1
    if-eqz p3, :cond_5

    if-eqz p5, :cond_5

    .line 417
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 420
    .end local v8           #newInstance:Ljava/lang/Object;
    :cond_5
    if-nez v8, :cond_13

    .line 421
    if-eqz v7, :cond_7

    .line 422
    invoke-static/range {p3 .. p3}, Lcom/google/api/client/util/ClassInfo;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v8

    .local v8, newInstance:Ljava/util/Map;
    move-object v11, v8

    .line 427
    .end local v8           #newInstance:Ljava/util/Map;
    :goto_2
    if-eqz v7, :cond_9

    if-eqz p3, :cond_9

    .line 429
    if-eqz p2, :cond_8

    .line 430
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v10

    .line 436
    .local v10, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v10, :cond_9

    .line 438
    move-object v0, v11

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 440
    .local v5, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, v5

    move-object v2, v10

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    goto :goto_0

    .line 414
    .end local v5           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #isMap:Z
    .end local v10           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v8, newInstance:Ljava/lang/Object;
    :cond_6
    const/4 v11, 0x0

    move v7, v11

    goto :goto_1

    .line 424
    .end local v8           #newInstance:Ljava/lang/Object;
    .restart local v7       #isMap:Z
    :cond_7
    invoke-static/range {p3 .. p3}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #newInstance:Ljava/lang/Object;
    move-object v11, v8

    goto :goto_2

    .line 432
    .end local v8           #newInstance:Ljava/lang/Object;
    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-static {v12}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .restart local v10       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_3

    .line 444
    .end local v10           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    goto/16 :goto_0

    .line 448
    .end local v7           #isMap:Z
    :pswitch_2
    if-eqz p3, :cond_a

    const-class v11, Ljava/lang/Boolean;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_a

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_a

    .line 450
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": expected type Boolean or boolean but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 454
    :cond_a
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne p1, v11, :cond_b

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_b
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 456
    :pswitch_3
    if-eqz p3, :cond_c

    const-class v11, Ljava/lang/Float;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_c

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_c

    .line 458
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": expected type Float or float but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 462
    :cond_c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto/16 :goto_0

    .line 464
    :pswitch_4
    if-eqz p3, :cond_d

    const-class v11, Ljava/lang/Integer;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_d

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object v1, v11

    if-ne v0, v1, :cond_e

    .line 466
    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 468
    :cond_e
    const-class v11, Ljava/lang/Short;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_f

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object v1, v11

    if-ne v0, v1, :cond_10

    .line 469
    :cond_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getShortValue()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    goto/16 :goto_0

    .line 471
    :cond_10
    const-class v11, Ljava/lang/Byte;

    move-object/from16 v0, p3

    move-object v1, v11

    if-eq v0, v1, :cond_11

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object v1, v11

    if-ne v0, v1, :cond_12

    .line 472
    :cond_11
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getByteValue()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    goto/16 :goto_0

    .line 474
    :cond_12
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": expected type Integer/int/Short/short/Byte/byte but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 480
    :pswitch_5
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 481
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 482
    .local v6, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 486
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v7       #isMap:Z
    :cond_13
    move-object v11, v8

    goto/16 :goto_2

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 9
    .parameter "generator"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 95
    :cond_0
    instance-of v8, p1, Ljava/lang/String;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/lang/Long;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/lang/Double;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/math/BigInteger;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/math/BigDecimal;

    if-eqz v8, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 131
    .end local p1
    :goto_0
    return-void

    .line 100
    .restart local p1
    :cond_2
    instance-of v8, p1, Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    .line 101
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_0

    .line 102
    .restart local p1
    :cond_3
    instance-of v8, p1, Ljava/lang/Integer;

    if-nez v8, :cond_4

    instance-of v8, p1, Ljava/lang/Short;

    if-nez v8, :cond_4

    instance-of v8, p1, Ljava/lang/Byte;

    if-eqz v8, :cond_5

    .line 104
    :cond_4
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 105
    .restart local p1
    :cond_5
    instance-of v8, p1, Ljava/lang/Float;

    if-eqz v8, :cond_6

    .line 107
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 108
    .restart local p1
    :cond_6
    instance-of v8, p1, Lcom/google/api/client/util/DateTime;

    if-eqz v8, :cond_7

    .line 109
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .end local p1
    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .restart local p1
    :cond_7
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_9

    .line 111
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 114
    .local v6, listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 115
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_8

    .line 116
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 118
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 120
    .end local v4           #i:I
    .end local v6           #listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7           #size:I
    :cond_9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 121
    invoke-static {p1}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 123
    .local v3, fieldValue:Ljava/lang/Object;
    if-eqz v3, :cond_a

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    invoke-static {p0, v3}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_2

    .line 129
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v3           #fieldValue:Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0
.end method

.method public static skipToKey(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
    .locals 3
    .parameter "parser"
    .parameter "keyToFind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void

    .line 174
    .restart local v0       #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_1
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 81
    .restart local v2       #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 83
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 84
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
