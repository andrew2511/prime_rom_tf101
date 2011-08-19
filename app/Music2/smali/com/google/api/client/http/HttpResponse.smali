.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field public final contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field public final contentType:Ljava/lang/String;

.field public disableContentLogging:Z

.field public final headers:Lcom/google/api/client/http/HttpHeaders;

.field public final isSuccessStatusCode:Z

.field private response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field public final statusCode:I

.field public final statusMessage:Ljava/lang/String;

.field public final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .locals 25
    .parameter "transport"
    .parameter "response"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 95
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentLength()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    move-result v4

    .line 100
    .local v4, code:I
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 101
    invoke-static {v4}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode(I)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, message:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 104
    sget-object v17, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 105
    .local v17, logger:Ljava/util/logging/Logger;
    sget-object v23, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v16

    .line 106
    .local v16, loggable:Z
    const/4 v15, 0x0

    .line 107
    .local v15, logbuf:Ljava/lang/StringBuilder;
    if-eqz v16, :cond_1

    .line 108
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .restart local v15       #logbuf:Ljava/lang/StringBuilder;
    const-string v23, "-------------- RESPONSE --------------"

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v20

    .line 112
    .local v20, statusLine:Ljava/lang/String;
    if-eqz v20, :cond_5

    .line 113
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    :goto_0
    sget-object v23, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v20           #statusLine:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderCount()I

    move-result v19

    .line 124
    .local v19, size:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 126
    .local v12, headersClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/api/client/http/HttpHeaders;>;"
    invoke-static {v12}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v3

    .line 127
    .local v3, classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-static {v12}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/api/client/http/HttpHeaders;

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 128
    .local v11, headers:Lcom/google/api/client/http/HttpHeaders;
    invoke-static {v12}, Lcom/google/api/client/http/HttpHeaders;->getFieldNameMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v8

    .line 130
    .local v8, fieldNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move v0, v13

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 131
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderName(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, headerName:Ljava/lang/String;
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, headerValue:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 134
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, fieldName:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 139
    move-object v7, v9

    .line 142
    :cond_3
    invoke-virtual {v3, v7}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v6

    .line 143
    .local v6, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v6, :cond_7

    .line 144
    move-object v0, v6

    iget-object v0, v0, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    move-object/from16 v22, v0

    .line 146
    .local v22, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v23, Ljava/util/Collection;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 147
    invoke-virtual {v6, v11}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 149
    .local v5, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v5, :cond_4

    .line 150
    invoke-static/range {v22 .. v22}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v5

    .line 151
    invoke-virtual {v6, v11, v5}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    :cond_4
    move-object v0, v6

    iget-object v0, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v21

    .line 156
    .local v21, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v21

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v21           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 115
    .end local v3           #classInfo:Lcom/google/api/client/util/ClassInfo;
    .end local v6           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v7           #fieldName:Ljava/lang/String;
    .end local v8           #fieldNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #headerName:Ljava/lang/String;
    .end local v10           #headerValue:Ljava/lang/String;
    .end local v11           #headers:Lcom/google/api/client/http/HttpHeaders;
    .end local v12           #headersClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/api/client/http/HttpHeaders;>;"
    .end local v13           #i:I
    .end local v19           #size:I
    .restart local v20       #statusLine:Ljava/lang/String;
    :cond_5
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    if-eqz v18, :cond_0

    .line 117
    const/16 v23, 0x20

    move-object v0, v15

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 160
    .end local v20           #statusLine:Ljava/lang/String;
    .restart local v3       #classInfo:Lcom/google/api/client/util/ClassInfo;
    .restart local v6       #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .restart local v7       #fieldName:Ljava/lang/String;
    .restart local v8       #fieldNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #headerName:Ljava/lang/String;
    .restart local v10       #headerValue:Ljava/lang/String;
    .restart local v11       #headers:Lcom/google/api/client/http/HttpHeaders;
    .restart local v12       #headersClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/api/client/http/HttpHeaders;>;"
    .restart local v13       #i:I
    .restart local v19       #size:I
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, v22

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 165
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {v11, v7}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 167
    .local v14, listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_8

    .line 168
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .restart local v14       #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v7, v14}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_8
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    .end local v6           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v7           #fieldName:Ljava/lang/String;
    .end local v9           #headerName:Ljava/lang/String;
    .end local v10           #headerValue:Ljava/lang/String;
    .end local v14           #listValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-eqz v16, :cond_a

    .line 175
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 177
    :cond_a
    return-void
.end method

.method public static isSuccessStatusCode(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 325
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v8, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 189
    .local v8, response:Lcom/google/api/client/http/LowLevelHttpResponse;
    if-nez v8, :cond_0

    .line 190
    iget-object v9, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    .line 230
    :goto_0
    return-object v9

    .line 192
    :cond_0
    iget-object v9, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v9}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 193
    .local v0, content:Ljava/io/InputStream;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 194
    if-eqz v0, :cond_6

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, debugContentByteArray:[B
    sget-object v7, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 197
    .local v7, logger:Ljava/util/logging/Logger;
    iget-boolean v9, p0, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    if-nez v9, :cond_1

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    sget-object v9, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_2
    const/4 v9, 0x1

    move v6, v9

    .line 200
    .local v6, loggable:Z
    :goto_1
    if-eqz v6, :cond_3

    .line 201
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v5, debugStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v5}, Lcom/google/api/client/http/InputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 203
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0           #content:Ljava/io/InputStream;
    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 205
    .restart local v0       #content:Ljava/io/InputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 209
    .end local v5           #debugStream:Ljava/io/ByteArrayOutputStream;
    :cond_3
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 210
    .local v2, contentEncoding:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v9, "gzip"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 211
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    .end local v0           #content:Ljava/io/InputStream;
    .local v1, content:Ljava/io/InputStream;
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 213
    if-eqz v6, :cond_8

    .line 214
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .restart local v5       #debugStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v5}, Lcom/google/api/client/http/InputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 216
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 217
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 220
    .end local v1           #content:Ljava/io/InputStream;
    .end local v5           #debugStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #content:Ljava/io/InputStream;
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 222
    iget-object v3, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 223
    .local v3, contentType:Ljava/lang/String;
    array-length v9, v4

    if-eqz v9, :cond_5

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 225
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 228
    .end local v3           #contentType:Ljava/lang/String;
    :cond_5
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    .end local v2           #contentEncoding:Ljava/lang/String;
    .end local v4           #debugContentByteArray:[B
    .end local v6           #loggable:Z
    .end local v7           #logger:Ljava/util/logging/Logger;
    :cond_6
    move-object v9, v0

    .line 230
    goto/16 :goto_0

    .line 197
    .restart local v4       #debugContentByteArray:[B
    .restart local v7       #logger:Ljava/util/logging/Logger;
    :cond_7
    const/4 v9, 0x0

    move v6, v9

    goto :goto_1

    .end local v0           #content:Ljava/io/InputStream;
    .restart local v1       #content:Ljava/io/InputStream;
    .restart local v2       #contentEncoding:Ljava/lang/String;
    .restart local v6       #loggable:Z
    :cond_8
    move-object v0, v1

    .end local v1           #content:Ljava/io/InputStream;
    .restart local v0       #content:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public getParser()Lcom/google/api/client/http/HttpParser;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 241
    .local v0, content:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 244
    :cond_0
    return-void
.end method

.method public parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    .line 266
    .local p1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getParser()Lcom/google/api/client/http/HttpParser;

    move-result-object v1

    .line 267
    .local v1, parser:Lcom/google/api/client/http/HttpParser;
    if-nez v1, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 269
    .local v0, content:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 270
    if-eqz v0, :cond_0

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing Content-Type header in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    const/4 v2, 0x0

    .line 279
    .end local v0           #content:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 276
    .restart local v0       #content:Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parser defined for Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v0           #content:Ljava/io/InputStream;
    :cond_2
    invoke-interface {v1, p0, p1}, Lcom/google/api/client/http/HttpParser;->parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public parseAsString()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1000

    .line 293
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 294
    .local v3, content:Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 295
    const-string v9, ""

    .line 316
    :goto_0
    return-object v9

    .line 298
    :cond_0
    :try_start_0
    iget-wide v4, p0, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 299
    .local v4, contentLength:J
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_2

    move v1, v11

    .line 300
    .local v1, bufferSize:I
    :goto_1
    const/4 v6, 0x0

    .line 301
    .local v6, length:I
    new-array v0, v1, [B

    .line 302
    .local v0, buffer:[B
    const/16 v9, 0x1000

    new-array v8, v9, [B

    .line 304
    .local v8, tmp:[B
    :goto_2
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, bytesRead:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 305
    add-int v9, v6, v2

    if-le v9, v1, :cond_1

    .line 306
    shl-int/lit8 v9, v1, 0x1

    add-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    new-array v7, v1, [B

    .line 308
    .local v7, newbuffer:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    move-object v0, v7

    .line 311
    .end local v7           #newbuffer:[B
    :cond_1
    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/2addr v6, v2

    goto :goto_2

    .line 299
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #bytesRead:I
    .end local v6           #length:I
    .end local v8           #tmp:[B
    :cond_2
    long-to-int v9, v4

    move v1, v9

    goto :goto_1

    .line 314
    .restart local v0       #buffer:[B
    .restart local v1       #bufferSize:I
    .restart local v2       #bytesRead:I
    .restart local v6       #length:I
    .restart local v8       #tmp:[B
    :cond_3
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #bytesRead:I
    .end local v4           #contentLength:J
    .end local v6           #length:I
    .end local v8           #tmp:[B
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9
.end method
