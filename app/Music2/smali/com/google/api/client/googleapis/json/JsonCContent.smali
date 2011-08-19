.class public final Lcom/google/api/client/googleapis/json/JsonCContent;
.super Lcom/google/api/client/json/JsonHttpContent;
.source "JsonCContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/api/client/json/JsonHttpContent;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v1, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 53
    .local v0, generator:Lorg/codehaus/jackson/JsonGenerator;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 54
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/JsonCContent;->data:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 57
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 58
    return-void
.end method
