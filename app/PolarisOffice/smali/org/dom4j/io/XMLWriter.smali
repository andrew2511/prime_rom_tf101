.class public Lorg/dom4j/io/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat; = null

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String; = null

.field private static final PAD_TEXT:Ljava/lang/String; = " "


# instance fields
.field private autoFlush:Z

.field private buffer:Ljava/lang/StringBuffer;

.field private charsAdded:Z

.field private escapeText:Z

.field private format:Lorg/dom4j/io/OutputFormat;

.field private inDTD:Z

.field private indentLevel:I

.field private lastChar:C

.field private lastElementClosed:Z

.field protected lastOutputNodeType:I

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private maximumAllowedCharacter:I

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private namespacesMap:Ljava/util/Map;

.field protected preserve:Z

.field private resolveEntityRefs:Z

.field private showCommentsInDTDs:Z

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 76
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    .line 74
    sput-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    sput-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 81
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 162
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 163
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 164
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 165
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 81
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 169
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 170
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 171
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 172
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 3
    .parameter "out"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 81
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 177
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 178
    invoke-virtual {p2}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 179
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 180
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 152
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 3
    .parameter "writer"
    .parameter "format"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 81
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 156
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 157
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 158
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 3
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 81
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 184
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 186
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 187
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 188
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 730
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    if-gtz p3, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, string:Ljava/lang/String;
    iget-boolean v4, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v4, :cond_2

    .line 744
    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 747
    :cond_2
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v4}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 748
    iget v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-nez v4, :cond_4

    .line 749
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 758
    :cond_3
    :goto_1
    const-string v0, ""

    .line 759
    .local v0, delim:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 761
    .local v3, tokens:Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_6

    .line 770
    .end local v0           #delim:Ljava/lang/String;
    .end local v3           #tokens:Ljava/util/StringTokenizer;
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 771
    add-int v4, p2, p3

    sub-int/2addr v4, v6

    aget-char v4, p1, v4

    iput-char v4, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    .line 772
    const/4 v4, 0x3

    iput v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 774
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v2           #string:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 776
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0

    .line 750
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #string:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-eqz v4, :cond_5

    iget-char v4, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 751
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 752
    :cond_5
    iget v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v4, v6, :cond_3

    .line 753
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v4}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v4, :cond_3

    .line 754
    const/4 v4, 0x0

    aget-char v4, p1, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 755
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    .restart local v0       #delim:Ljava/lang/String;
    .restart local v3       #tokens:Ljava/util/StringTokenizer;
    :cond_6
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 763
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 764
    const-string v0, " "

    goto :goto_2

    .line 767
    .end local v0           #delim:Ljava/lang/String;
    .end local v3           #tokens:Ljava/util/StringTokenizer;
    :cond_7
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 283
    return-void
.end method

.method public comment([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 883
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->showCommentsInDTDs:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    if-nez v1, :cond_1

    .line 885
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 886
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_2

    .line 893
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 895
    :cond_2
    return-void

    .line 887
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 888
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .parameter "outStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1568
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method protected defaultMaximumAllowedCharacter()I
    .locals 2

    .prologue
    .line 1846
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, encoding:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1849
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    const/16 v1, 0x7f

    .line 1855
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public endCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 862
    :cond_0
    return-void

    .line 855
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 856
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 835
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 838
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 654
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 701
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 702
    iget v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 704
    iget-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 706
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 711
    :cond_0
    const/4 v1, 0x1

    .line 713
    .local v1, hadContent:Z
    if-eqz v1, :cond_1

    .line 714
    invoke-virtual {p0, p3}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 719
    :goto_0
    const/4 v2, 0x1

    iput v2, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 720
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 722
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .end local v1           #hadContent:Z
    :goto_1
    return-void

    .line 716
    .restart local v1       #hadContent:Z
    :cond_1
    invoke-virtual {p0, p3}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    .end local v1           #hadContent:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 724
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 880
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->endPrefixMapping(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method protected escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    .line 1735
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v8}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v6

    .line 1737
    .local v6, quote:C
    const/4 v1, 0x0

    check-cast v1, [C

    .line 1739
    .local v1, block:[C
    const/4 v5, 0x0

    .line 1740
    .local v5, last:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1742
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 1805
    if-nez v5, :cond_5

    move-object v8, p1

    .line 1820
    :goto_1
    return-object v8

    .line 1743
    :cond_0
    const/4 v3, 0x0

    .line 1744
    .local v3, entity:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1746
    .local v2, c:C
    sparse-switch v2, :sswitch_data_0

    .line 1787
    const/16 v8, 0x20

    if-lt v2, v8, :cond_1

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1788
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "&#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1794
    :cond_2
    :goto_2
    :sswitch_0
    if-eqz v3, :cond_4

    .line 1795
    if-nez v1, :cond_3

    .line 1796
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1799
    :cond_3
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v9, v4, v5

    invoke-virtual {v8, v1, v5, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1800
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1801
    add-int/lit8 v5, v4, 0x1

    .line 1742
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1748
    :sswitch_1
    const-string v3, "&lt;"

    .line 1750
    goto :goto_2

    .line 1753
    :sswitch_2
    const-string v3, "&gt;"

    .line 1755
    goto :goto_2

    .line 1759
    :sswitch_3
    const/16 v8, 0x27

    if-ne v6, v8, :cond_2

    .line 1760
    const-string v3, "&apos;"

    .line 1763
    goto :goto_2

    .line 1767
    :sswitch_4
    const/16 v8, 0x22

    if-ne v6, v8, :cond_2

    .line 1768
    const-string v3, "&quot;"

    .line 1771
    goto :goto_2

    .line 1774
    :sswitch_5
    const-string v3, "&amp;"

    .line 1776
    goto :goto_2

    .line 1809
    .end local v2           #c:C
    .end local v3           #entity:Ljava/lang/String;
    :cond_5
    if-ge v5, v7, :cond_7

    .line 1810
    if-nez v1, :cond_6

    .line 1811
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1814
    :cond_6
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v9, v4, v5

    invoke-virtual {v8, v1, v5, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1817
    :cond_7
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, answer:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v8, v0

    .line 1820
    goto :goto_1

    .line 1746
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_3
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "text"

    .prologue
    .line 1643
    const/4 v1, 0x0

    check-cast v1, [C

    .line 1645
    .local v1, block:[C
    const/4 v5, 0x0

    .line 1646
    .local v5, last:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1648
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v6, :cond_0

    .line 1699
    if-nez v5, :cond_5

    move-object v7, p1

    .line 1714
    :goto_1
    return-object v7

    .line 1649
    :cond_0
    const/4 v3, 0x0

    .line 1650
    .local v3, entity:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1652
    .local v2, c:C
    sparse-switch v2, :sswitch_data_0

    .line 1681
    const/16 v7, 0x20

    if-lt v2, v7, :cond_1

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1682
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "&#"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1688
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    .line 1689
    if-nez v1, :cond_3

    .line 1690
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1693
    :cond_3
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v8, v4, v5

    invoke-virtual {v7, v1, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1694
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1695
    add-int/lit8 v5, v4, 0x1

    .line 1648
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1654
    :sswitch_0
    const-string v3, "&lt;"

    .line 1656
    goto :goto_2

    .line 1659
    :sswitch_1
    const-string v3, "&gt;"

    .line 1661
    goto :goto_2

    .line 1664
    :sswitch_2
    const-string v3, "&amp;"

    .line 1666
    goto :goto_2

    .line 1673
    :sswitch_3
    iget-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v7, :cond_2

    .line 1674
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1677
    goto :goto_2

    .line 1703
    .end local v2           #c:C
    .end local v3           #entity:Ljava/lang/String;
    :cond_5
    if-ge v5, v6, :cond_7

    .line 1704
    if-nez v1, :cond_6

    .line 1705
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1708
    :cond_6
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v8, v4, v5

    invoke-virtual {v7, v1, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1711
    :cond_7
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, answer:Ljava/lang/String;
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v7, v0

    .line 1714
    goto :goto_1

    .line 1652
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 273
    return-void
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getMaximumAllowedCharacter()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->defaultMaximumAllowedCharacter()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    .line 248
    :cond_0
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return v0
.end method

.method protected getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 621
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 616
    :cond_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    goto :goto_1

    .line 615
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected handleException(Ljava/io/IOException;)V
    .locals 1
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1873
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 783
    return-void
.end method

.method protected indent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, indent:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1530
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    if-lt v0, v2, :cond_1

    .line 1534
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1531
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected installLexicalHandler()V
    .locals 4

    .prologue
    .line 1358
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 1360
    .local v1, parent:Lorg/xml/sax/XMLReader;
    if-nez v1, :cond_0

    .line 1361
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No parent for filter"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1365
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1376
    :goto_1
    return-void

    .line 1367
    :cond_1
    :try_start_0
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1370
    :catch_0
    move-exception v2

    .line 1365
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method protected final isElementSpacePreserved(Lorg/dom4j/Element;)Z
    .locals 4
    .parameter "element"

    .prologue
    .line 985
    const-string v2, "space"

    invoke-interface {p1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 986
    .local v0, attr:Lorg/dom4j/Attribute;
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 988
    .local v1, preserveFound:Z
    if-eqz v0, :cond_0

    .line 989
    const-string v2, "xml"

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    const-string v2, "preserve"

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    const/4 v1, 0x1

    .line 997
    :cond_0
    :goto_0
    return v1

    .line 993
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEscapeText()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return v0
.end method

.method protected isExpandEmptyElements()Z
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    return v0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 2
    .parameter "ns"

    .prologue
    .line 1859
    if-eqz p1, :cond_0

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v1, :cond_0

    .line 1860
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1863
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1864
    const/4 v1, 0x1

    .line 1869
    .end local v0           #uri:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->installLexicalHandler()V

    .line 597
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    .line 598
    return-void
.end method

.method public println()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 788
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 789
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 795
    const/4 v1, 0x7

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 797
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 799
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public resolveEntityRefs()Z
    .locals 1

    .prologue
    .line 1891
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 639
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 640
    return-void
.end method

.method public setEscapeText(Z)V
    .locals 0
    .parameter "escapeText"

    .prologue
    .line 221
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 222
    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0
    .parameter "indentLevel"

    .prologue
    .line 233
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 234
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null lexical handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 630
    return-void
.end method

.method public setMaximumAllowedCharacter(I)V
    .locals 0
    .parameter "maximumAllowedCharacter"

    .prologue
    .line 262
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    .line 263
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 199
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 610
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    .end local p2
    :goto_1
    return-void

    .line 603
    .restart local p2
    :cond_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2
    invoke-virtual {p0, p2}, Lorg/dom4j/io/XMLWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_1

    .line 602
    .restart local p2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setResolveEntityRefs(Z)V
    .locals 0
    .parameter "resolve"

    .prologue
    .line 1895
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 1896
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 191
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 193
    return-void
.end method

.method protected shouldEncodeChar(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1833
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getMaximumAllowedCharacter()I

    move-result v0

    .line 1835
    .local v0, max:I
    if-lez v0, :cond_0

    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 850
    :cond_0
    return-void

    .line 843
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 844
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 819
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 822
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 644
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 645
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 647
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 679
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 681
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 682
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 683
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeNamespaces()V

    .line 686
    invoke-virtual {p0, p4}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 687
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 688
    iget v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 689
    const/4 v1, 0x1

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 690
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 692
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 694
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 866
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 874
    :cond_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    instance-of v4, p1, Lorg/dom4j/Node;

    if-eqz v4, :cond_1

    .line 545
    check-cast p1, Lorg/dom4j/Node;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Node;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 546
    .restart local p1
    :cond_1
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 547
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    .restart local p1
    :cond_2
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 549
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 551
    .local v2, list:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 552
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/Object;)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v3           #size:I
    :cond_3
    if-eqz p1, :cond_0

    .line 555
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Invalid object: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 497
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Attribute;)V
    .locals 1
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    .line 307
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 310
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .locals 1
    .parameter "cdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 391
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Comment;)V
    .locals 1
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 408
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .locals 4
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 337
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 339
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    .line 342
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 347
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 349
    iget-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 352
    :cond_1
    return-void

    .line 343
    :cond_2
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 344
    .local v1, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write(Lorg/dom4j/DocumentType;)V
    .locals 1
    .parameter "docType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    .line 422
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 425
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 371
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 374
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .locals 1
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    .line 439
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 442
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Namespace;)V
    .locals 1
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 456
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 459
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 528
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 531
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .locals 1
    .parameter "processingInstruction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    .line 474
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 477
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Text;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-interface {p1}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 511
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 514
    :cond_0
    return-void
.end method

.method protected writeAttribute(Lorg/dom4j/Attribute;)V
    .locals 3
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1496
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1497
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1500
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1501
    .local v0, quote:C
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1503
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1505
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1506
    const/4 v1, 0x2

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1507
    return-void
.end method

.method protected writeAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 3
    .parameter "attributes"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1518
    .local v0, quote:C
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1519
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1520
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1522
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1524
    return-void
.end method

.method protected writeAttributes(Lorg/dom4j/Element;)V
    .locals 11
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1449
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1493
    return-void

    .line 1450
    :cond_0
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 1451
    .local v1, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    .line 1453
    .local v3, ns:Lorg/dom4j/Namespace;
    if-eqz v3, :cond_1

    sget-object v8, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v8, :cond_1

    .line 1454
    sget-object v8, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v8, :cond_1

    .line 1455
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1456
    .local v4, prefix:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v4}, Lorg/dom4j/tree/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1458
    .local v7, uri:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1459
    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 1460
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 1467
    .end local v4           #prefix:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, attName:Ljava/lang/String;
    const-string v8, "xmlns:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1470
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1472
    .restart local v4       #prefix:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v4}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1473
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1474
    .restart local v7       #uri:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v4, v7}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v4, v7}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    .end local v4           #prefix:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1477
    :cond_3
    const-string v8, "xmlns"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1478
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1479
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1480
    .restart local v7       #uri:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v10, v7}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0, v10, v7}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1484
    .end local v7           #uri:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v8}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v5

    .line 1485
    .local v5, quote:C
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1486
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1487
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1488
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v8, v5}, Ljava/io/Writer;->write(I)V

    .line 1489
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1490
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v8, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_1
.end method

.method protected writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1510
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1513
    return-void

    .line 1511
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/xml/sax/Attributes;I)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1153
    if-eqz p1, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1159
    const/4 v0, 0x4

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1160
    return-void
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 2
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1611
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1614
    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method protected writeComment(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    .line 1425
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 1428
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1432
    const/16 v0, 0x8

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1433
    return-void
.end method

.method protected writeDeclaration()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1581
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, encoding:Ljava/lang/String;
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isSuppressDeclaration()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1586
    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1587
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1589
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1590
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " encoding=\"UTF-8\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1593
    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1604
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isNewLineAfterDeclaration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    .line 1608
    :cond_1
    return-void

    .line 1595
    :cond_2
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1598
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, " encoding=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1601
    :cond_3
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1380
    const/4 v0, 0x0

    .line 1382
    .local v0, hasPublic:Z
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<!DOCTYPE "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1383
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1385
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1387
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1389
    const/4 v0, 0x1

    .line 1392
    :cond_0
    if-eqz p3, :cond_2

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1393
    if-nez v0, :cond_1

    .line 1394
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " SYSTEM"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1397
    :cond_1
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1402
    :cond_2
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1404
    return-void
.end method

.method protected writeDocType(Lorg/dom4j/DocumentType;)V
    .locals 1
    .parameter "docType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1163
    if-eqz p1, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lorg/dom4j/DocumentType;->write(Ljava/io/Writer;)V

    .line 1165
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1167
    :cond_0
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 12
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 900
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v7

    .line 901
    .local v7, size:I
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    .line 903
    .local v6, qualifiedName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 904
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 906
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 907
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v9, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 909
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v5

    .line 910
    .local v5, previouslyDeclaredNamespaces:I
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v4

    .line 912
    .local v4, ns:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 913
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9, v4}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 914
    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 918
    :cond_0
    const/4 v8, 0x1

    .line 920
    .local v8, textOnly:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v7, :cond_1

    .line 937
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 939
    iput v11, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 941
    if-gtz v7, :cond_5

    .line 942
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    .line 968
    :goto_1
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v9

    if-gt v9, v5, :cond_7

    .line 972
    iput v11, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 973
    return-void

    .line 921
    :cond_1
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 923
    .local v3, node:Lorg/dom4j/Node;
    instance-of v9, v3, Lorg/dom4j/Namespace;

    if-eqz v9, :cond_3

    .line 924
    move-object v0, v3

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 926
    .local v1, additional:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 927
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 928
    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 920
    .end local v1           #additional:Lorg/dom4j/Namespace;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    :cond_3
    instance-of v9, v3, Lorg/dom4j/Element;

    if-eqz v9, :cond_4

    .line 931
    const/4 v8, 0x0

    goto :goto_2

    .line 932
    :cond_4
    instance-of v9, v3, Lorg/dom4j/Comment;

    if-eqz v9, :cond_2

    .line 933
    const/4 v8, 0x0

    goto :goto_2

    .line 944
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_5
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 946
    if-eqz v8, :cond_6

    .line 949
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    .line 962
    :goto_3
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 963
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v9, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 964
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 952
    :cond_6
    iget v9, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 954
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    .line 956
    iget v9, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    sub-int/2addr v9, v11

    iput v9, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 958
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 959
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    goto :goto_3

    .line 969
    :cond_7
    iget-object v9, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_1
.end method

.method protected writeElementContent(Lorg/dom4j/Element;)V
    .locals 14
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v12}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v10

    .line 1015
    .local v10, trim:Z
    iget-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 1017
    .local v7, oldPreserve:Z
    if-eqz v10, :cond_0

    .line 1018
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->isElementSpacePreserved(Lorg/dom4j/Element;)Z

    move-result v12

    iput-boolean v12, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 1019
    iget-boolean v12, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    move v10, v12

    .line 1022
    :cond_0
    :goto_0
    if-eqz v10, :cond_12

    .line 1025
    const/4 v5, 0x0

    .line 1026
    .local v5, lastTextNode:Lorg/dom4j/Text;
    const/4 v1, 0x0

    .line 1027
    .local v1, buff:Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    .line 1029
    .local v9, textOnly:Z
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v8

    .local v8, size:I
    :goto_1
    if-lt v3, v8, :cond_4

    .line 1090
    if-eqz v5, :cond_2

    .line 1091
    if-nez v9, :cond_1

    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v12}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1094
    const/16 v2, 0x61

    .line 1095
    .local v2, firstChar:C
    if-eqz v1, :cond_10

    .line 1096
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 1101
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1102
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1106
    .end local v2           #firstChar:C
    :cond_1
    if-eqz v1, :cond_11

    .line 1107
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 1108
    const/4 v1, 0x0

    .line 1113
    :goto_3
    const/4 v5, 0x0

    .line 1147
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .end local v5           #lastTextNode:Lorg/dom4j/Text;
    .end local v9           #textOnly:Z
    :cond_2
    iput-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 1148
    return-void

    .line 1019
    .end local v3           #i:I
    .end local v8           #size:I
    :cond_3
    const/4 v12, 0x1

    move v10, v12

    goto :goto_0

    .line 1030
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    .restart local v3       #i:I
    .restart local v5       #lastTextNode:Lorg/dom4j/Text;
    .restart local v8       #size:I
    .restart local v9       #textOnly:Z
    :cond_4
    invoke-interface {p1, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v6

    .line 1032
    .local v6, node:Lorg/dom4j/Node;
    instance-of v12, v6, Lorg/dom4j/Text;

    if-eqz v12, :cond_7

    .line 1033
    if-nez v5, :cond_5

    .line 1034
    move-object v0, v6

    check-cast v0, Lorg/dom4j/Text;

    move-object v5, v0

    .line 1029
    .end local v6           #node:Lorg/dom4j/Node;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1036
    .restart local v6       #node:Lorg/dom4j/Node;
    :cond_5
    if-nez v1, :cond_6

    .line 1037
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #buff:Ljava/lang/StringBuffer;
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1040
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    :cond_6
    check-cast v6, Lorg/dom4j/Text;

    .end local v6           #node:Lorg/dom4j/Node;
    invoke-interface {v6}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1043
    .restart local v6       #node:Lorg/dom4j/Node;
    :cond_7
    if-nez v9, :cond_9

    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v12}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1046
    const/16 v2, 0x61

    .line 1047
    .restart local v2       #firstChar:C
    if-eqz v1, :cond_d

    .line 1048
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 1053
    :cond_8
    :goto_5
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1054
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1058
    .end local v2           #firstChar:C
    :cond_9
    if-eqz v5, :cond_c

    .line 1059
    if-eqz v1, :cond_e

    .line 1060
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 1061
    const/4 v1, 0x0

    .line 1066
    :goto_6
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v12}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1069
    const/16 v4, 0x61

    .line 1070
    .local v4, lastTextChar:C
    if-eqz v1, :cond_f

    .line 1071
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 1077
    :cond_a
    :goto_7
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1078
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1082
    .end local v4           #lastTextChar:C
    :cond_b
    const/4 v5, 0x0

    .line 1085
    :cond_c
    const/4 v9, 0x0

    .line 1086
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    goto :goto_4

    .line 1049
    .restart local v2       #firstChar:C
    :cond_d
    if-eqz v5, :cond_8

    .line 1050
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_5

    .line 1063
    .end local v2           #firstChar:C
    :cond_e
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 1072
    .restart local v4       #lastTextChar:C
    :cond_f
    if-eqz v5, :cond_a

    .line 1073
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v11

    .line 1074
    .local v11, txt:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_7

    .line 1098
    .end local v4           #lastTextChar:C
    .end local v6           #node:Lorg/dom4j/Node;
    .end local v11           #txt:Ljava/lang/String;
    .restart local v2       #firstChar:C
    :cond_10
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto/16 :goto_2

    .line 1110
    .end local v2           #firstChar:C
    :cond_11
    invoke-interface {v5}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1116
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v5           #lastTextNode:Lorg/dom4j/Text;
    .end local v8           #size:I
    .end local v9           #textOnly:Z
    :cond_12
    const/4 v5, 0x0

    .line 1118
    .local v5, lastTextNode:Lorg/dom4j/Node;
    const/4 v3, 0x0

    .restart local v3       #i:I
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v8

    .restart local v8       #size:I
    :goto_8
    if-ge v3, v8, :cond_2

    .line 1119
    invoke-interface {p1, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v6

    .line 1121
    .restart local v6       #node:Lorg/dom4j/Node;
    instance-of v12, v6, Lorg/dom4j/Text;

    if-eqz v12, :cond_13

    .line 1122
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 1123
    move-object v5, v6

    .line 1118
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1125
    :cond_13
    if-eqz v5, :cond_14

    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v12}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1128
    invoke-interface {v5}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v11

    .line 1129
    .restart local v11       #txt:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1131
    .restart local v4       #lastTextChar:C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1132
    iget-object v12, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1136
    .end local v4           #lastTextChar:C
    .end local v11           #txt:Ljava/lang/String;
    :cond_14
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 1142
    const/4 v5, 0x0

    goto :goto_9
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .locals 2
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1626
    :goto_0
    return-void

    .line 1622
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .locals 2
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEntityRef(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1419
    const/4 v0, 0x5

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1420
    return-void
.end method

.method protected writeEscapeAttributeEntities(Ljava/lang/String;)V
    .locals 2
    .parameter "txt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1718
    if-eqz p1, :cond_0

    .line 1719
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, escapedText:Ljava/lang/String;
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1722
    .end local v0           #escapedText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns:"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1215
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeNamespace(Lorg/dom4j/Namespace;)V
    .locals 2
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    if-eqz p1, :cond_0

    .line 1171
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_0
    return-void
.end method

.method protected writeNamespaces()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1183
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1184
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 1183
    if-nez v4, :cond_1

    .line 1191
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    .line 1193
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 1185
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1186
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1187
    .local v2, prefix:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1188
    .local v3, uri:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeNode(Lorg/dom4j/Node;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    .line 1299
    .local v0, nodeType:I
    packed-switch v0, :pswitch_data_0

    .line 1353
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Invalid node type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :pswitch_1
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 1355
    :goto_0
    :pswitch_2
    return-void

    .line 1306
    .restart local p1
    :pswitch_3
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 1311
    .restart local p1
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNodeText(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 1317
    :pswitch_5
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    goto :goto_0

    .line 1322
    :pswitch_6
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 1327
    .restart local p1
    :pswitch_7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 1332
    .restart local p1
    :pswitch_8
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    :pswitch_9
    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 1342
    .restart local p1
    :pswitch_a
    check-cast p1, Lorg/dom4j/DocumentType;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected writeNodeText(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1286
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_0

    .line 1287
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1291
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    .line 1294
    :cond_1
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 575
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method protected writePrintln()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1545
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, seperator:Ljava/lang/String;
    iget-char v1, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1548
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1551
    .end local v0           #seperator:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V
    .locals 2
    .parameter "pi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1229
    const/4 v0, 0x7

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1230
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 1233
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1234
    iget-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v3, :cond_0

    .line 1235
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1243
    :cond_0
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v3}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1244
    const/4 v0, 0x1

    .line 1245
    .local v0, first:Z
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1270
    .end local v0           #first:Z
    .end local v2           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    return-void

    .line 1248
    .restart local v0       #first:Z
    .restart local v2       #tokenizer:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, token:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1251
    const/4 v0, 0x0

    .line 1253
    iget v3, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v3, v5, :cond_3

    .line 1254
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1260
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1261
    iput v5, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    goto :goto_0

    .line 1257
    :cond_4
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1265
    .end local v0           #first:Z
    .end local v1           #token:Ljava/lang/String;
    .end local v2           #tokenizer:Ljava/util/StringTokenizer;
    :cond_5
    iput v5, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1266
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    goto :goto_1
.end method
