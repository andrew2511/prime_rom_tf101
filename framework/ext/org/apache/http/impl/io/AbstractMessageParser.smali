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
    .registers 6
    .parameter "buffer"
    .parameter "parser"
    .parameter "params"

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_e

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_e
    if-nez p3, :cond_18

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_18
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 76
    const-string v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 78
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 80
    if-eqz p2, :cond_30

    move-object v0, p2

    :goto_2d
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 81
    return-void

    .line 80
    :cond_30
    sget-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    goto :goto_2d
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .registers 10
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
    .line 106
    if-nez p0, :cond_a

    .line 107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Session input buffer may not be null"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    .restart local p0
    .restart local p1
    :cond_a
    if-nez p3, :cond_e

    .line 110
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 112
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, headerLines:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 115
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v1, 0x0

    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    move-object v4, v1

    .line 117
    .end local v1           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v4, previous:Lorg/apache/http/util/CharArrayBuffer;
    :goto_16
    if-nez v0, :cond_4c

    .line 118
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .restart local v0       #current:Lorg/apache/http/util/CharArrayBuffer;
    move-object v1, v0

    .line 122
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    :goto_20
    invoke-interface {p0, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 123
    .local v0, l:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2e

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .end local v0           #l:I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_51

    .line 156
    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0
    new-array p1, p0, [Lorg/apache/http/Header;

    .line 157
    .local p1, headers:[Lorg/apache/http/Header;
    const/4 p0, 0x0

    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .local p2, i:I
    :goto_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p2, p0, :cond_c8

    .line 158
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/util/CharArrayBuffer;

    .line 160
    .local p0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    :try_start_42
    invoke-interface {p3, p0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object p0

    .end local p0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    aput-object p0, p1, p2
    :try_end_48
    .catch Lorg/apache/http/ParseException; {:try_start_42 .. :try_end_48} :catch_bd

    .line 157
    add-int/lit8 p0, p2, 0x1

    .end local p2           #i:I
    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .restart local p2       #i:I
    goto :goto_36

    .line 120
    .end local v1           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    .local p0, inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .local p1, maxHeaderCount:I
    .local p2, maxLineLen:I
    :cond_4c
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    move-object v1, v0

    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v1       #current:Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_20

    .line 130
    :cond_51
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_63

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_b4

    :cond_63
    if-eqz v4, :cond_b4

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .line 134
    .end local v0           #i:I
    .local v3, i:I
    :goto_67
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    if-ge v3, v0, :cond_79

    .line 135
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 136
    .local v0, ch:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_91

    const/16 v5, 0x9

    if-eq v0, v5, :cond_91

    .line 141
    .end local v0           #ch:C
    :cond_79
    if-lez p2, :cond_95

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    if-le v0, p2, :cond_95

    .line 143
    new-instance p0, Ljava/io/IOException;

    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    const-string p1, "Maximum line length limit exceeded"

    .end local p1           #maxHeaderCount:I
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    .restart local v0       #ch:C
    .restart local p0       #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .restart local p1       #maxHeaderCount:I
    :cond_91
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .line 140
    .end local v0           #i:I
    .restart local v3       #i:I
    goto :goto_67

    .line 145
    :cond_95
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 146
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v1, v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    move-object v0, v1

    .end local v1           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v0, current:Lorg/apache/http/util/CharArrayBuffer;
    move-object v1, v4

    .line 152
    .end local v3           #i:I
    .end local v4           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    :goto_a4
    if-lez p1, :cond_ba

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_ba

    .line 153
    new-instance p0, Ljava/io/IOException;

    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    const-string p1, "Maximum header count exceeded"

    .end local p1           #maxHeaderCount:I
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4       #previous:Lorg/apache/http/util/CharArrayBuffer;
    .restart local p0       #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .restart local p1       #maxHeaderCount:I
    :cond_b4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    move-object v1, v1

    .line 150
    .end local v4           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .local v1, previous:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v0, 0x0

    .restart local v0       #current:Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_a4

    :cond_ba
    move-object v4, v1

    .line 155
    .end local v1           #previous:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4       #previous:Lorg/apache/http/util/CharArrayBuffer;
    goto/16 :goto_16

    .line 161
    .end local v0           #current:Lorg/apache/http/util/CharArrayBuffer;
    .end local p0           #inbuffer:Lorg/apache/http/io/SessionInputBuffer;
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    .local p1, headers:[Lorg/apache/http/Header;
    .local p2, i:I
    :catch_bd
    move-exception p0

    .line 162
    .local p0, ex:Lorg/apache/http/ParseException;
    new-instance p1, Lorg/apache/http/ProtocolException;

    .end local p1           #headers:[Lorg/apache/http/Header;
    invoke-virtual {p0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Lorg/apache/http/ParseException;
    invoke-direct {p1, p0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    .restart local p1       #headers:[Lorg/apache/http/Header;
    :cond_c8
    return-object p1
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, message:Lorg/apache/http/HttpMessage;
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    :try_end_6
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_6} :catch_17

    move-result-object v1

    .line 178
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 183
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-interface {v1, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 184
    return-object v1

    .line 175
    .end local v0           #headers:[Lorg/apache/http/Header;
    :catch_17
    move-exception v3

    move-object v2, v3

    .line 176
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
