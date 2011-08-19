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
    .line 57
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
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
    .line 210
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 212
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
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v10

    .line 228
    .local v10, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-class v2, Lcom/google/api/client/json/GenericJson;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    .line 230
    .local v11, isGenericJson:Z
    if-nez v11, :cond_2

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    check-cast p1, Ljava/util/Map;

    .line 233
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .end local v1           #destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 236
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v1, p2}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 272
    .end local v1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p1           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 254
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .local v2, curToken:Lorg/codehaus/jackson/JsonToken;
    .local p1, destination:Ljava/lang/Object;
    :cond_1
    iget-object v3, v1, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 255
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v4, v1, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    .end local v1           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    move-result-object v1

    .line 258
    .local v1, fieldValue:Ljava/lang/Object;
    invoke-static {v3, p1, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .end local v1           #fieldValue:Ljava/lang/Object;
    .end local v2           #curToken:Lorg/codehaus/jackson/JsonToken;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 243
    .restart local v2       #curToken:Lorg/codehaus/jackson/JsonToken;
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1, v3}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_3
    invoke-virtual {v10, v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    .line 248
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v1, :cond_4

    .line 250
    iget-boolean v3, v1, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    .end local v3           #key:Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-nez v3, :cond_1

    .line 251
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "final array/object fields are not supported"

    .end local p1           #destination:Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    .restart local v3       #key:Ljava/lang/String;
    .restart local p0
    .restart local p1       #destination:Ljava/lang/Object;
    :cond_4
    if-eqz v11, :cond_5

    .line 261
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/json/GenericJson;

    move-object v1, v0

    .line 262
    .local v1, object:Lcom/google/api/client/json/GenericJson;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, v2

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curToken:Lorg/codehaus/jackson/JsonToken;
    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    .local v1, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .restart local v2       #curToken:Lorg/codehaus/jackson/JsonToken;
    :cond_5
    if-eqz p2, :cond_6

    .line 267
    invoke-virtual {p2, p1, v3}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
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
    .line 148
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 150
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
    .line 190
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 194
    return-void

    .line 192
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
    .line 277
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 281
    .local v1, curToken:Lorg/codehaus/jackson/JsonToken;
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, v6}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    .end local v1           #curToken:Lorg/codehaus/jackson/JsonToken;
    .end local v6           #key:Ljava/lang/String;
    :cond_0
    return-void

    .line 285
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

    .line 288
    .local v7, value:Ljava/lang/Object;
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 7
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
    .line 295
    .local p3, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/google/api/client/json/Json$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 416
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": unexpected JSON node type"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_0
    if-eqz p3, :cond_0

    const-class p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 299
    :cond_0
    const/4 p1, 0x0

    .line 300
    .local p1, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {p5, p4, p2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object p1

    .line 304
    :cond_1
    if-nez p1, :cond_2

    .line 305
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    .line 307
    :cond_2
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v4

    .line 309
    .end local p2
    .local v4, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .local v2, listToken:Lorg/codehaus/jackson/JsonToken;
    sget-object p2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, p2, :cond_3

    .line 310
    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p0, p1

    .line 414
    .end local v2           #listToken:Lorg/codehaus/jackson/JsonToken;
    .end local v4           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p0
    .end local p1           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local p4
    :goto_1
    return-object p0

    .line 315
    .restart local p0
    .restart local p2
    .restart local p4
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected field type that implements Collection but got "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    .restart local p0
    .local p1, token:Lorg/codehaus/jackson/JsonToken;
    .restart local p2
    :pswitch_1
    const/4 v1, 0x0

    .line 320
    .local v1, newInstance:Ljava/lang/Object;
    if-eqz p3, :cond_5

    const-class p1, Ljava/util/Map;

    .end local p1           #token:Lorg/codehaus/jackson/JsonToken;
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    const/4 p1, 0x1

    .line 322
    .local p1, isMap:Z
    :goto_2
    if-eqz p3, :cond_20

    if-eqz p5, :cond_20

    .line 323
    invoke-virtual {p5, p4, p3}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 326
    .end local v1           #newInstance:Ljava/lang/Object;
    .local p4, newInstance:Ljava/lang/Object;
    :goto_3
    if-nez p4, :cond_6

    .line 327
    if-eqz p1, :cond_8

    .line 328
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p4

    .line 333
    .end local p4           #newInstance:Ljava/lang/Object;
    :cond_6
    :goto_4
    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    .line 335
    if-eqz p2, :cond_9

    .line 336
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p1

    .local p1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object p2, p1

    .line 342
    .end local p1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_5
    if-eqz p2, :cond_a

    .line 344
    move-object v0, p4

    check-cast v0, Ljava/util/Map;

    move-object p1, v0

    .line 346
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2, p5}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move-object p0, p4

    .line 347
    goto :goto_1

    .line 320
    .end local p1           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #newInstance:Ljava/lang/Object;
    .local p2, field:Ljava/lang/reflect/Field;
    .local p4, destination:Ljava/lang/Object;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 330
    .end local v1           #newInstance:Ljava/lang/Object;
    .local p1, isMap:Z
    .local p4, newInstance:Ljava/lang/Object;
    :cond_8
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_4

    .line 338
    .end local p4           #newInstance:Ljava/lang/Object;
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .end local p1           #isMap:Z
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .local p1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object p2, p1

    .end local p1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_5

    .line 350
    .end local p2           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    invoke-static {p0, p4, p5}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move-object p0, p4

    .line 351
    goto :goto_1

    .line 354
    .local p1, token:Lorg/codehaus/jackson/JsonToken;
    .local p2, field:Ljava/lang/reflect/Field;
    .local p4, destination:Ljava/lang/Object;
    :pswitch_2
    if-eqz p3, :cond_b

    const-class p2, Ljava/lang/Boolean;

    .end local p2           #field:Ljava/lang/reflect/Field;
    if-eq p3, p2, :cond_b

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_b

    .line 356
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1           #token:Lorg/codehaus/jackson/JsonToken;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": expected type Boolean or boolean but got "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    .restart local p0
    .restart local p1       #token:Lorg/codehaus/jackson/JsonToken;
    :cond_b
    sget-object p0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    .end local p0
    if-ne p1, p0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 361
    .restart local p0
    .restart local p2       #field:Ljava/lang/reflect/Field;
    :pswitch_3
    if-eqz p3, :cond_d

    const-class p1, Ljava/lang/Float;

    .end local p1           #token:Lorg/codehaus/jackson/JsonToken;
    if-eq p3, p1, :cond_d

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, p1, :cond_d

    .line 363
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #field:Ljava/lang/reflect/Field;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": expected type Float or float but got "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    .restart local p0
    .restart local p2       #field:Ljava/lang/reflect/Field;
    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_1

    .line 368
    .restart local p0
    .restart local p1       #token:Lorg/codehaus/jackson/JsonToken;
    :pswitch_4
    if-eqz p3, :cond_e

    const-class p1, Ljava/lang/Integer;

    .end local p1           #token:Lorg/codehaus/jackson/JsonToken;
    if-eq p3, p1, :cond_e

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, p1, :cond_f

    .line 370
    :cond_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_1

    .line 372
    .restart local p0
    :cond_f
    const-class p1, Ljava/lang/Short;

    if-eq p3, p1, :cond_10

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, p1, :cond_11

    .line 373
    :cond_10
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getShortValue()S

    move-result p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_1

    .line 375
    .restart local p0
    :cond_11
    const-class p1, Ljava/lang/Byte;

    if-eq p3, p1, :cond_12

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, p1, :cond_13

    .line 376
    :cond_12
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getByteValue()B

    move-result p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_1

    .line 378
    .restart local p0
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #field:Ljava/lang/reflect/Field;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": expected type Integer/int/Short/short/Byte/byte but got "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    .restart local p0
    .restart local p1       #token:Lorg/codehaus/jackson/JsonToken;
    .restart local p2       #field:Ljava/lang/reflect/Field;
    :pswitch_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    .line 383
    .local p1, stringValue:Ljava/lang/String;
    if-eqz p3, :cond_14

    const-class p2, Ljava/lang/String;

    .end local p2           #field:Ljava/lang/reflect/Field;
    if-ne p3, p2, :cond_15

    :cond_14
    move-object p0, p1

    .line 384
    goto/16 :goto_1

    .line 386
    :cond_15
    const-class p2, Ljava/lang/Long;

    if-eq p3, p2, :cond_16

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, p2, :cond_17

    .line 387
    :cond_16
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .end local p0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_1

    .line 389
    .restart local p0
    :cond_17
    const-class p2, Ljava/lang/Double;

    if-eq p3, p2, :cond_18

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, p2, :cond_19

    .line 391
    :cond_18
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    .end local p0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_1

    .line 393
    .restart local p0
    :cond_19
    const-class p2, Ljava/lang/Character;

    if-eq p3, p2, :cond_1a

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, p2, :cond_1c

    .line 394
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_1b

    .line 395
    .end local p4           #destination:Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1           #stringValue:Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": expected type Character/char but got "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    .restart local p0
    .restart local p1       #stringValue:Ljava/lang/String;
    :cond_1b
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .end local p0
    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_1

    .line 400
    .restart local p0
    .restart local p4       #destination:Ljava/lang/Object;
    :cond_1c
    const-class p2, Ljava/math/BigInteger;

    if-ne p3, p2, :cond_1d

    .line 401
    new-instance p0, Ljava/math/BigInteger;

    .end local p0
    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    .restart local p0
    :cond_1d
    const-class p2, Ljava/math/BigDecimal;

    if-ne p3, p2, :cond_1e

    .line 404
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    .restart local p0
    :cond_1e
    const-class p2, Lcom/google/api/client/util/DateTime;

    if-ne p3, p2, :cond_1f

    .line 407
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object p0

    goto/16 :goto_1

    .line 409
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1           #stringValue:Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": expected type String/Long/long/Double/double/Character/char/BigInteger/BigDecimal/DateTime but got "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    .restart local p0
    .local p1, token:Lorg/codehaus/jackson/JsonToken;
    .restart local p2       #field:Ljava/lang/reflect/Field;
    :pswitch_6
    const/4 p0, 0x0

    goto/16 :goto_1

    .restart local v1       #newInstance:Ljava/lang/Object;
    .local p1, isMap:Z
    :cond_20
    move-object p4, v1

    .end local v1           #newInstance:Ljava/lang/Object;
    .local p4, newInstance:Ljava/lang/Object;
    goto/16 :goto_3

    .line 295
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
    .line 91
    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 94
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

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 130
    .end local p1
    :goto_0
    return-void

    .line 99
    .restart local p1
    :cond_2
    instance-of v8, p1, Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    .line 100
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_0

    .line 101
    .restart local p1
    :cond_3
    instance-of v8, p1, Ljava/lang/Integer;

    if-nez v8, :cond_4

    instance-of v8, p1, Ljava/lang/Short;

    if-nez v8, :cond_4

    instance-of v8, p1, Ljava/lang/Byte;

    if-eqz v8, :cond_5

    .line 103
    :cond_4
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 104
    .restart local p1
    :cond_5
    instance-of v8, p1, Ljava/lang/Float;

    if-eqz v8, :cond_6

    .line 106
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 107
    .restart local p1
    :cond_6
    instance-of v8, p1, Lcom/google/api/client/util/DateTime;

    if-eqz v8, :cond_7

    .line 108
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .end local p1
    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .restart local p1
    :cond_7
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_9

    .line 110
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 113
    .local v6, listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 114
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_8

    .line 115
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 119
    .end local v4           #i:I
    .end local v6           #listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7           #size:I
    :cond_9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 120
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

    .line 121
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 122
    .local v3, fieldValue:Ljava/lang/Object;
    if-eqz v3, :cond_a

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 125
    invoke-static {p0, v3}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_2

    .line 128
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
    .line 167
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 170
    if-ne v0, p1, :cond_1

    .line 175
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void

    .line 173
    .restart local v0       #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_1
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 80
    .restart local v2       #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 83
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
