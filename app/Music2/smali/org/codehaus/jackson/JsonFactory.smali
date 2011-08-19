.class public Lorg/codehaus/jackson/JsonFactory;
.super Ljava/lang/Object;
.source "JsonFactory.java"


# static fields
.field static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _generatorFeatures:I

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _parserFeatures:I

.field protected _rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 61
    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/JsonFactory;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .parameter "oc"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->createRoot(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 90
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 107
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 109
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 123
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;
    .locals 2
    .parameter "srcRef"
    .parameter "resourceManaged"

    .prologue
    .line 494
    new-instance v0, Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/io/IOContext;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 3
    .parameter "out"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;-><init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 5
    .parameter "in"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p2, p1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 6
    .parameter "r"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget v2, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method protected _createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lorg/codehaus/jackson/io/IOContext;[BII)V

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;
    .locals 2
    .parameter "out"
    .parameter "enc"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 575
    new-instance v0, Lorg/codehaus/jackson/io/UTF8Writer;

    invoke-direct {v0, p3, p1}, Lorg/codehaus/jackson/io/UTF8Writer;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V

    .line 578
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;
    .locals 4

    .prologue
    .line 537
    sget-object v2, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 538
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/util/BufferRecycler;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    .line 540
    .end local p0
    .local v0, br:Lorg/codehaus/jackson/util/BufferRecycler;
    :goto_0
    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler;

    .end local v0           #br:Lorg/codehaus/jackson/util/BufferRecycler;
    invoke-direct {v0}, Lorg/codehaus/jackson/util/BufferRecycler;-><init>()V

    .line 542
    .restart local v0       #br:Lorg/codehaus/jackson/util/BufferRecycler;
    if-nez v1, :cond_0

    .line 543
    sget-object v2, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 546
    :cond_0
    return-object v0

    .line 538
    .end local v0           #br:Lorg/codehaus/jackson/util/BufferRecycler;
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/codehaus/jackson/util/BufferRecycler;

    move-object v0, p0

    goto :goto_0
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 566
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 569
    .end local v0           #host:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public final configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 221
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 226
    :goto_0
    return-object p0

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public final configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 139
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 144
    :goto_0
    return-object p0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/File;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 3
    .parameter "f"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 478
    .local v1, out:Ljava/io/OutputStream;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 479
    .local v0, ctxt:Lorg/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 480
    invoke-virtual {p0, v1, p2, v0}, Lorg/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    return-object v2
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .parameter "out"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 435
    .local v0, ctxt:Lorg/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 436
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 456
    .local v0, ctxt:Lorg/codehaus/jackson/io/IOContext;
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, r:Ljava/io/Reader;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([B)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 2
    .parameter "f"

    .prologue
    .line 248
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 249
    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 2
    .parameter "f"

    .prologue
    .line 165
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 166
    return-object p0
.end method

.method public final disableGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 275
    return-void
.end method

.method public final disableParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 192
    return-void
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 2
    .parameter "f"

    .prologue
    .line 237
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 238
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 2
    .parameter "f"

    .prologue
    .line 154
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 155
    return-object p0
.end method

.method public final enableGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 268
    return-void
.end method

.method public final enableParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    .line 185
    return-void
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 258
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 175
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGeneratorFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public final isParserFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 205
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0
    .parameter "oc"

    .prologue
    .line 298
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 299
    return-object p0
.end method

.method public final setGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 282
    return-void
.end method

.method public final setParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 199
    return-void
.end method
