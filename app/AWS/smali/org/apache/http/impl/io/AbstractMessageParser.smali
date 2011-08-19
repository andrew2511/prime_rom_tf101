.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# instance fields
.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "buffer"
    .parameter "parser"
    .parameter "params"

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p3, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 97
    const-string v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 99
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 101
    if-eqz p2, :cond_2

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 102
    return-void

    .line 101
    :cond_2
    sget-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .locals 6
    .parameter "inbuffer"
    .parameter "maxHeaderCount"
    .parameter "maxLineLen"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Session input buffer may not be null"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    .restart local p0
    .restart local p1
    :cond_0
    if-nez p3, :cond_1

    .line 132
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 134
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, headerLines:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 137
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v1, 0x0

    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    move-object v4, v1

    .line 139
    .end local v1           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v4, previous:Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    if-nez v0, :cond_3

    .line 140
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .restart local v0       #current:Lorg/apache/http/util/CharArrayBuffer;
    move-object v1, v0

    .line 144
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    :goto_1
    invoke-interface {p0, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 145
    .local v0, l:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .end local v0           #l:I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_4

    .line 178
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0
    new-array p1, p0, [Lorg/apache/http/Header;

    .line 179
    .local p1, headers:[Lorg/apache/http/Header;
    const/4 p0, 0x0

    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .local p2, i:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p2, p0, :cond_b

    .line 180
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/util/CharArrayBuffer;

    .line 182
    .local p0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    :try_start_0
    invoke-interface {p3, p0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object p0

    .end local p0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    aput-object p0, p1, p2
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 p0, p2, 0x1

    .end local p2           #i:I
    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .restart local p2       #i:I
    goto :goto_2

    .line 142
    .end local v1           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    .local p0, inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .local p1, maxHeaderCount:I
    .local p2, maxLineLen:I
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    move-object v1, v0

    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v1       #current:Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_1

    .line 152
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_9

    :cond_5
    if-eqz v4, :cond_9

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .line 156
    .end local v0           #i:I
    .local v3, i:I
    :goto_3
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 157
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 158
    .local v0, ch:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_7

    const/16 v5, 0x9

    if-eq v0, v5, :cond_7

    .line 163
    .end local v0           #ch:C
    :cond_6
    if-lez p2, :cond_8

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    if-le v0, p2, :cond_8

    .line 165
    new-instance p0, Ljava/io/IOException;

    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    const-string p1, "Maximum line length limit exceeded"

    .end local p1           #maxHeaderCount:I
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    .restart local v0       #ch:C
    .restart local p0       #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .restart local p1       #maxHeaderCount:I
    :cond_7
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .line 162
    .end local v0           #i:I
    .restart local v3       #i:I
    goto :goto_3

    .line 167
    :cond_8
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 168
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v1, v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    move-object v0, v1

    .end local v1           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    move-object v1, v4

    .line 174
    .end local v3           #i:I
    .end local v4           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    :goto_4
    if-lez p1, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_a

    .line 175
    new-instance p0, Ljava/io/IOException;

    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    const-string p1, "Maximum header count exceeded"

    .end local p1           #maxHeaderCount:I
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4       #previous:Lorg/apache/http/util/CharArrayBuffer;
    .restart local p0       #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .restart local p1       #maxHeaderCount:I
    :cond_9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    move-object v1, v1

    .line 172
    .end local v4           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v0, 0x0

    .restart local v0       #current:Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_4

    :cond_a
    move-object v4, v1

    .line 177
    .end local v1           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4       #previous:Lorg/apache/http/util/CharArrayBuffer;
    goto/16 :goto_0

    .line 183
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    .local p1, headers:[Lorg/apache/http/Header;
    .local p2, i:I
    :catch_0
    move-exception p0

    .line 184
    .local p0, ex:Lorg/apache/http/ParseException;
    new-instance p1, Lorg/apache/http/ProtocolException;

    .end local p1           #headers:[Lorg/apache/http/Header;
    invoke-virtual {p0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Lorg/apache/http/ParseException;
    invoke-direct {p1, p0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    .restart local p1       #headers:[Lorg/apache/http/Header;
    :cond_b
    return-object p1
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, message:Lorg/apache/http/HttpMessage;
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 219
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-interface {v1, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 220
    return-object v1

    .line 211
    .end local v0           #headers:[Lorg/apache/http/Header;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 212
    .local v2, px:Lorg/apache/http/ParseException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
