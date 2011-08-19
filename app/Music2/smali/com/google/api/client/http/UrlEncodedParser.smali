.class public final Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field public contentType:Ljava/lang/String;

.field public disableContentLogging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .parameter "content"
    .parameter "data"

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 107
    .local v2, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-class v3, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v3, v0

    move-object v5, v3

    .line 110
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

    .line 112
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    const/4 v1, 0x0

    .line 113
    .local v1, cur:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 114
    .local v6, length:I
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, nextEquals:I
    move v4, v3

    .end local v3           #nextEquals:I
    .local v4, nextEquals:I
    move v3, v1

    .line 115
    .end local v1           #cur:I
    .local v3, cur:I
    :goto_2
    if-ge v3, v6, :cond_9

    .line 116
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 117
    .local v1, amp:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    .line 118
    move v1, v6

    .line 122
    :cond_0
    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    if-ge v4, v1, :cond_4

    .line 123
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, name:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v4           #nextEquals:I
    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, stringValue:Ljava/lang/String;
    const/16 v4, 0x3d

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .restart local v4       #nextEquals:I
    move-object v10, v8

    .end local v8           #stringValue:Ljava/lang/String;
    .local v10, stringValue:Ljava/lang/String;
    move v9, v4

    .line 131
    .end local v4           #nextEquals:I
    .local v9, nextEquals:I
    :goto_3
    invoke-static {v3}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .end local v3           #name:Ljava/lang/String;
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v4

    .line 134
    .local v4, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v4, :cond_6

    .line 135
    iget-object v8, v4, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    .line 136
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    invoke-virtual {v4, p1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 139
    .local v3, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 140
    invoke-static {v8}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 141
    invoke-virtual {v4, p1, v3}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    :cond_1
    iget-object v4, v4, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .end local v4           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    invoke-static {v4}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v4

    .line 145
    .local v4, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4, v10}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .local v1, cur:I
    move v4, v9

    .end local v9           #nextEquals:I
    .local v4, nextEquals:I
    move v3, v1

    .line 164
    .end local v1           #cur:I
    .local v3, cur:I
    goto :goto_2

    .line 107
    .end local v3           #cur:I
    .end local v4           #nextEquals:I
    .end local v5           #genericData:Lcom/google/api/client/util/GenericData;
    .end local v6           #length:I
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10           #stringValue:Ljava/lang/String;
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_0

    .line 110
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #genericData:Lcom/google/api/client/util/GenericData;
    :cond_3
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    .line 128
    .local v1, amp:I
    .restart local v3       #cur:I
    .restart local v4       #nextEquals:I
    .restart local v6       #length:I
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, name:Ljava/lang/String;
    const-string v8, ""

    .local v8, stringValue:Ljava/lang/String;
    move-object v10, v8

    .end local v8           #stringValue:Ljava/lang/String;
    .restart local v10       #stringValue:Ljava/lang/String;
    move v9, v4

    .end local v4           #nextEquals:I
    .restart local v9       #nextEquals:I
    goto :goto_3

    .line 148
    .end local v3           #name:Ljava/lang/String;
    .local v4, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    invoke-static {v8, v10}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 152
    .local v8, name:Ljava/lang/String;
    :cond_6
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 153
    .local v3, listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_7

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .restart local v3       #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    .line 156
    invoke-virtual {v5, v8, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_7
    :goto_5
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 158
    :cond_8
    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 165
    .end local v1           #amp:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #nextEquals:I
    .end local v10           #stringValue:Ljava/lang/String;
    .local v3, cur:I
    .local v4, nextEquals:I
    :cond_9
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

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
    .line 77
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v1, p0, Lcom/google/api/client/http/UrlEncodedParser;->disableContentLogging:Z

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    .line 80
    :cond_0
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-object v0
.end method
