.class public final Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field public disableContentLogging:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .parameter "content"
    .parameter "data"

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 68
    .local v2, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-class v3, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v3, v0

    move-object v5, v3

    .line 71
    .local v5, genericData:Lcom/google/api/client/util/GenericData;
    :goto_0
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    move-object v7, v1

    .line 73
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    const/4 v1, 0x0

    .line 74
    .local v1, cur:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, length:I
    move v3, v1

    .line 75
    .end local v1           #cur:I
    .local v3, cur:I
    :goto_2
    if-ge v3, v6, :cond_8

    .line 76
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 77
    .local v1, amp:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 78
    move v1, v6

    .line 80
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 81
    .local v4, equals:I
    if-le v4, v3, :cond_1

    if-lt v4, v1, :cond_4

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed URL encoding: "

    .end local v4           #equals:I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    .end local v3           #cur:I
    .end local v5           #genericData:Lcom/google/api/client/util/GenericData;
    .end local v6           #length:I
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #classInfo:Lcom/google/api/client/util/ClassInfo;
    .restart local p0
    .restart local p1
    :cond_2
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_0

    .line 71
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #genericData:Lcom/google/api/client/util/GenericData;
    :cond_3
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    .line 85
    .local v1, amp:I
    .restart local v3       #cur:I
    .restart local v4       #equals:I
    .restart local v6       #length:I
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v3           #cur:I
    invoke-static {v3}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, name:Ljava/lang/String;
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 89
    .local v3, field:Ljava/lang/reflect/Field;
    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .end local v8           #name:Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 91
    .local v4, fieldValue:Ljava/lang/Object;
    invoke-static {v3, p1, v4}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .end local v4           #fieldValue:Ljava/lang/Object;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .local v1, cur:I
    move v3, v1

    .line 98
    .end local v1           #cur:I
    .local v3, cur:I
    goto :goto_2

    .line 92
    .local v1, amp:I
    .local v3, field:Ljava/lang/reflect/Field;
    .local v4, value:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 93
    invoke-virtual {v5, v8, v4}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 94
    :cond_7
    if-eqz v7, :cond_5

    .line 95
    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 99
    .end local v1           #amp:I
    .end local v4           #value:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .local v3, cur:I
    :cond_8
    return-void
.end method

.method private static parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "stringValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 134
    :goto_0
    return-object v0

    .line 105
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 112
    :cond_6
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_7
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 115
    :cond_8
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_9
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_a

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    .line 118
    :cond_a
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_b
    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 121
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type Character/char but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_e
    const-class v0, Lcom/google/api/client/util/DateTime;

    if-ne p1, v0, :cond_f

    .line 128
    invoke-static {p0}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :cond_f
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 131
    :cond_10
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 133
    :cond_12
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_13

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 134
    :cond_13
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 56
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v1, p0, Lcom/google/api/client/http/UrlEncodedParser;->disableContentLogging:Z

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method
