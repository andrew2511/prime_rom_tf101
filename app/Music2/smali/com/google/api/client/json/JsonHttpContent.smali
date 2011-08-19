.class public Lcom/google/api/client/json/JsonHttpContent;
.super Ljava/lang/Object;
.source "JsonHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/json/JsonHttpContent;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "application/json"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v1, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 71
    .local v0, generator:Lorg/codehaus/jackson/JsonGenerator;
    iget-object v1, p0, Lcom/google/api/client/json/JsonHttpContent;->data:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 73
    return-void
.end method
