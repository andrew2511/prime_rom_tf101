.class public abstract Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.super Ljava/lang/Object;
.source "XmlResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 1
    .parameter "parser"

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;,"Lcom/google/android/youtube/core/converter/http/XmlResponseConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;->parser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;,"Lcom/google/android/youtube/core/converter/http/XmlResponseConverter<TT;>;"
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;,"Lcom/google/android/youtube/core/converter/http/XmlResponseConverter<TT;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 43
    .local v2, xml:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;->parser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;->getRules()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/android/youtube/core/converter/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/Rules;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/ModelBuilder;

    .line 44
    .local v0, builder:Lcom/google/android/youtube/core/model/ModelBuilder;,"Lcom/google/android/youtube/core/model/ModelBuilder<TT;>;"
    invoke-interface {v0}, Lcom/google/android/youtube/core/model/ModelBuilder;->build()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 45
    .end local v0           #builder:Lcom/google/android/youtube/core/model/ModelBuilder;,"Lcom/google/android/youtube/core/model/ModelBuilder<TT;>;"
    .end local v2           #xml:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 46
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v3, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract getRules()Lcom/google/android/youtube/core/converter/Rules;
.end method
