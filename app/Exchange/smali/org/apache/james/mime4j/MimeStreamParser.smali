.class public Lorg/apache/james/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# static fields
.field private static fieldChars:Ljava/util/BitSet;

.field private static final log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private bodyDescriptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/BodyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/apache/james/mime4j/ContentHandler;

.field private raw:Z

.field private rootStream:Lorg/apache/james/mime4j/RootInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 65
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 66
    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 70
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    .line 61
    iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    .line 78
    return-void
.end method

.method private parseBodyPart(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startBodyPart()V

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 216
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endBodyPart()V

    goto :goto_0
.end method

.method private parseEntity(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;

    move-result-object v0

    .line 145
    .local v0, bd:Lorg/apache/james/mime4j/BodyDescriptor;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 148
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3, v0}, Lorg/apache/james/mime4j/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 150
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 152
    .local v2, tempIs:Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, v2}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 153
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 155
    :cond_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    .end local v2           #tempIs:Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 157
    .restart local v2       #tempIs:Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/MimeStreamParser;->parseBodyPart(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 159
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parentEOF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Body part ended prematurely. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Higher level boundary detected or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EOF reached."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 170
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 172
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/ContentHandler;->endMultipart()V

    .line 174
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 196
    .end local v2           #tempIs:Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 198
    return-void

    .line 176
    :cond_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 177
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string v4, "base64 encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 179
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, is:Ljava/io/InputStream;
    move-object p1, v1

    .line 186
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 187
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 188
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string v4, "quoted-printable encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 183
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .restart local v1       #is:Ljava/io/InputStream;
    move-object p1, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    goto :goto_1

    .line 190
    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v0, v4}, Lorg/apache/james/mime4j/ContentHandler;->body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;
    .locals 17
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Lorg/apache/james/mime4j/BodyDescriptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v1, v14}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 231
    .local v1, bd:Lorg/apache/james/mime4j/BodyDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object v14, v0

    invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->startHeader()V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v7

    .line 235
    .local v7, lineNumber:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v10, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 237
    .local v2, curr:I
    const/4 v9, 0x0

    .line 238
    .local v9, prev:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_1

    .line 239
    const/16 v14, 0xa

    if-ne v2, v14, :cond_4

    const/16 v14, 0xa

    if-eq v9, v14, :cond_0

    if-nez v9, :cond_4

    .line 243
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 250
    :cond_1
    const/4 v14, -0x1

    if-ne v2, v14, :cond_2

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 251
    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Unexpected end of headers detected. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Boundary detected in header or EOF reached."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 256
    :cond_2
    const/4 v11, 0x0

    .line 257
    .local v11, start:I
    const/4 v8, 0x0

    .line 258
    .local v8, pos:I
    move v12, v7

    .line 259
    .local v12, startLineNumber:I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_e

    .line 260
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_6

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 228
    .end local v1           #bd:Lorg/apache/james/mime4j/BodyDescriptor;
    .end local v2           #curr:I
    .end local v7           #lineNumber:I
    .end local v8           #pos:I
    .end local v9           #prev:I
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .end local v11           #start:I
    .end local v12           #startLineNumber:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/BodyDescriptor;

    move-object v14, v2

    goto/16 :goto_0

    .line 246
    .restart local v1       #bd:Lorg/apache/james/mime4j/BodyDescriptor;
    .restart local v2       #curr:I
    .restart local v7       #lineNumber:I
    .restart local v9       #prev:I
    .restart local v10       #sb:Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v14, v2

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    const/16 v14, 0xd

    if-ne v2, v14, :cond_5

    :goto_4
    goto/16 :goto_1

    :cond_5
    move v9, v2

    goto :goto_4

    .line 263
    .restart local v8       #pos:I
    .restart local v11       #start:I
    .restart local v12       #startLineNumber:I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v8, v14, :cond_7

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_7

    .line 264
    add-int/lit8 v8, v8, 0x1

    .line 265
    goto :goto_2

    .line 268
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v8, v14, :cond_8

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    add-int/lit8 v15, v8, 0x2

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 274
    :cond_8
    invoke-virtual {v10, v11, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, field:Ljava/lang/String;
    add-int/lit8 v11, v8, 0x2

    .line 280
    const/16 v14, 0x3a

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 281
    .local v6, index:I
    const/4 v13, 0x0

    .line 282
    .local v13, valid:Z
    const/4 v14, -0x1

    if-eq v6, v14, :cond_a

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 283
    const/4 v13, 0x1

    .line 284
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, fieldName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_9

    .line 286
    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_d

    .line 287
    const/4 v13, 0x0

    .line 292
    :cond_9
    if-eqz v13, :cond_a

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object v14, v0

    invoke-interface {v14, v3}, Lorg/apache/james/mime4j/ContentHandler;->field(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v4, v14}, Lorg/apache/james/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a
    if-nez v13, :cond_b

    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 299
    sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Ignoring invalid field: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 303
    :cond_b
    move v12, v7

    .line 306
    .end local v3           #field:Ljava/lang/String;
    .end local v6           #index:I
    .end local v13           #valid:Z
    :cond_c
    add-int/lit8 v8, v8, 0x2

    .line 307
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 285
    .restart local v3       #field:Ljava/lang/String;
    .restart local v4       #fieldName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #index:I
    .restart local v13       #valid:Z
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 310
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v13           #valid:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object v14, v0

    invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->endHeader()V

    .line 312
    return-object v1
.end method

.method private parseMessage(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startMessage()V

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 206
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endMessage()V

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 92
    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 322
    iput-object p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 323
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/RootInputStream;->truncate()V

    .line 133
    return-void
.end method
