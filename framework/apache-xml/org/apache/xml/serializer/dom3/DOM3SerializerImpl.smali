.class public final Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;
.super Ljava/lang/Object;
.source "DOM3SerializerImpl.java"

# interfaces
.implements Lorg/apache/xml/serializer/DOM3Serializer;


# instance fields
.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fNewLine:Ljava/lang/String;

.field private fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 62
    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method public getNewLine()[C
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNodeFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object v0
.end method

.method public serializeDOM3(Lorg/w3c/dom/Node;)V
    .registers 8
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;-><init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V

    .line 111
    .local v1, walker:Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_10} :catch_11

    .line 115
    return-void

    .line 112
    .end local v1           #walker:Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, se:Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 126
    return-void
.end method

.method public setNewLine([C)V
    .registers 3
    .parameter "newLine"

    .prologue
    .line 156
    if-eqz p1, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    :goto_7
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    .line 157
    return-void

    .line 156
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 138
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 149
    return-void
.end method
