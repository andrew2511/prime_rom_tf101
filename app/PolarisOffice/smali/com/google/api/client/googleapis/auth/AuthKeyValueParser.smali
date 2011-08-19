.class public final Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;
.super Ljava/lang/Object;
.source "AuthKeyValueParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# static fields
.field public static final INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;->INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "text/plain"

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 16
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .line 50
    .local v12, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 51
    .local v2, classInfo:Lcom/google/api/client/util/ClassInfo;
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 54
    .local v3, content:Ljava/io/InputStream;
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    .local v13, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 58
    .local v10, line:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 87
    return-object v12

    .line 61
    :cond_1
    const/16 v15, 0x3d

    :try_start_1
    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 62
    .local v5, equals:I
    const/4 v15, 0x0

    invoke-virtual {v10, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, key:Ljava/lang/String;
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 65
    .local v14, value:Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 66
    .local v6, field:Ljava/lang/reflect/Field;
    if-eqz v6, :cond_4

    .line 67
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 69
    .local v7, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v15, :cond_2

    const-class v15, Ljava/lang/Boolean;

    if-ne v7, v15, :cond_3

    .line 70
    :cond_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 74
    :goto_1
    invoke-static {v6, v12, v8}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v5           #equals:I
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v7           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v14           #value:Ljava/lang/String;
    :catchall_0
    move-exception v15

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v15

    .line 72
    .restart local v5       #equals:I
    .restart local v6       #field:Ljava/lang/reflect/Field;
    .restart local v7       #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    .restart local v14       #value:Ljava/lang/String;
    :cond_3
    move-object v8, v14

    .local v8, fieldValue:Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v7           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #fieldValue:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-class v15, Lcom/google/api/client/util/GenericData;

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 76
    move-object v0, v12

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v4, v0

    .line 77
    .local v4, data:Lcom/google/api/client/util/GenericData;
    invoke-virtual {v4, v9, v14}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v4           #data:Lcom/google/api/client/util/GenericData;
    :cond_5
    const-class v15, Ljava/util/Map;

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 80
    move-object v0, v12

    check-cast v0, Ljava/util/Map;

    move-object v11, v0

    .line 81
    .local v11, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v11, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
