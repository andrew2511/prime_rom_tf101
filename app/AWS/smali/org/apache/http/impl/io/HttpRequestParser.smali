.class public Lorg/apache/http/impl/io/HttpRequestParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "HttpRequestParser.java"


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final requestFactory:Lorg/apache/http/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "buffer"
    .parameter "parser"
    .parameter "requestFactory"
    .parameter "params"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 90
    if-nez p3, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p3, p0, Lorg/apache/http/impl/io/HttpRequestParser;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    .line 94
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 95
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 5
    .parameter "sessionBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 102
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v3}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 103
    .local v1, i:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 104
    new-instance v3, Lorg/apache/http/ConnectionClosedException;

    const-string v4, "Client closed connection"

    invoke-direct {v3, v4}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 107
    .local v0, cursor:Lorg/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v4, p0, Lorg/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    move-result-object v2

    .line 108
    .local v2, requestline:Lorg/apache/http/RequestLine;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpRequestParser;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    invoke-interface {v3, v2}, Lorg/apache/http/HttpRequestFactory;->newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;

    move-result-object v3

    return-object v3
.end method
