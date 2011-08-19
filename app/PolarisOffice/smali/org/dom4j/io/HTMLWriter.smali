.class public Lorg/dom4j/io/HTMLWriter;
.super Lorg/dom4j/io/XMLWriter;
.source "HTMLWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/HTMLWriter$FormatState;
    }
.end annotation


# static fields
.field protected static final DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private formatStack:Ljava/util/Stack;

.field private lastText:Ljava/lang/String;

.field private newLineAfterNTags:I

.field private omitElementCloseSet:Ljava/util/HashSet;

.field private preformattedTags:Ljava/util/HashSet;

.field private tagsOuput:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    .line 190
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "TEXTAREA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    const-string v1, "  "

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 201
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .parameter "out"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 222
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .parameter "writer"
    .parameter "format"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 227
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 213
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 235
    return-void
.end method

.method private internalGetOmitElementCloseSet()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 355
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->loadOmitElementCloseSet(Ljava/util/Set;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private justSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"

    .prologue
    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 648
    .local v3, size:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 651
    .local v2, res:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 665
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 652
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 654
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 661
    :pswitch_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 651
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private lazyInitNewLinesAfterNTags()V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getNewLineAfterNTags()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    goto :goto_0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 697
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 5
    .parameter "html"
    .parameter "newlines"
    .parameter "trim"
    .parameter "isXHTML"
    .parameter "expandEmpty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 751
    .local v2, sw:Ljava/io/StringWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    .line 752
    .local v1, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v1, p1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 753
    invoke-virtual {v1, p2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 754
    invoke-virtual {v1, p3}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    .line 755
    invoke-virtual {v1, p4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 757
    new-instance v3, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {v3, v2, v1}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 758
    .local v3, writer:Lorg/dom4j/io/HTMLWriter;
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 759
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 760
    invoke-virtual {v3}, Lorg/dom4j/io/HTMLWriter;->flush()V

    .line 762
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static prettyPrintXHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 719
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public getOmitElementCloseSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getPreformattedTags()Ljava/util/Set;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public isPreformattedTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "qualifiedName"

    .prologue
    .line 565
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 565
    goto :goto_0
.end method

.method protected loadOmitElementCloseSet(Ljava/util/Set;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 363
    const-string v0, "AREA"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v0, "BASE"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v0, "BR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v0, "COL"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v0, "HR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v0, "IMG"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v0, "INPUT"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v0, "LINK"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v0, "META"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v0, "P"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v0, "PARAM"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method protected omitElementClose(Ljava/lang/String;)Z
    .locals 2
    .parameter "qualifiedName"

    .prologue
    .line 348
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOmitElementCloseSet(Ljava/util/Set;)V
    .locals 4
    .parameter "newSet"

    .prologue
    .line 407
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 409
    if-eqz p1, :cond_1

    .line 410
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 413
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 415
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 423
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 416
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, aTag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 419
    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPreformattedTags(Ljava/util/Set;)V
    .locals 4
    .parameter "newSet"

    .prologue
    .line 534
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 536
    if-eqz p1, :cond_1

    .line 538
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 540
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 548
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 541
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, aTag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 544
    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    .line 263
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    .line 264
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 1
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method protected writeDeclaration()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 10
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    iget v8, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 585
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->lazyInitNewLinesAfterNTags()V

    .line 588
    :cond_0
    iget v8, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    if-lez v8, :cond_1

    .line 589
    iget v8, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    if-lez v8, :cond_1

    iget v8, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    iget v9, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_1

    .line 590
    iget-object v8, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    sget-object v9, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    :cond_1
    iget v8, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 596
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, qualifiedName:Ljava/lang/String;
    iget-object v3, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 598
    .local v3, saveLastText:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v6

    .line 600
    .local v6, size:I
    invoke-virtual {p0, v2}, Lorg/dom4j/io/HTMLWriter;->isPreformattedTag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 601
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    .line 602
    .local v0, currentFormat:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v4

    .line 603
    .local v4, saveNewlines:Z
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v5

    .line 604
    .local v5, saveTrimText:Z
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, currentIndent:Ljava/lang/String;
    iget-object v8, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    new-instance v9, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 609
    invoke-direct {v9, p0, v4, v5, v1}, Lorg/dom4j/io/HTMLWriter$FormatState;-><init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V

    .line 608
    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :try_start_0
    invoke-super {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 616
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 617
    if-eqz v1, :cond_2

    .line 618
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 624
    iget-object v8, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-direct {p0, v3}, Lorg/dom4j/io/HTMLWriter;->justSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 629
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 630
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 631
    const-string v8, ""

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 634
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v8, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 637
    .local v7, state:Lorg/dom4j/io/HTMLWriter$FormatState;
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v8

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 638
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v8

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 639
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 644
    .end local v0           #currentFormat:Lorg/dom4j/io/OutputFormat;
    .end local v1           #currentIndent:Ljava/lang/String;
    .end local v4           #saveNewlines:Z
    .end local v5           #saveTrimText:Z
    .end local v7           #state:Lorg/dom4j/io/HTMLWriter$FormatState;
    :goto_0
    return-void

    .line 635
    .restart local v0       #currentFormat:Lorg/dom4j/io/OutputFormat;
    .restart local v1       #currentIndent:Ljava/lang/String;
    .restart local v4       #saveNewlines:Z
    .restart local v5       #saveTrimText:Z
    :catchall_0
    move-exception v8

    .line 636
    iget-object v9, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 637
    .restart local v7       #state:Lorg/dom4j/io/HTMLWriter$FormatState;
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v9

    invoke-virtual {v0, v9}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 638
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v9

    invoke-virtual {v0, v9}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 639
    invoke-virtual {v7}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 640
    throw v8

    .line 642
    .end local v0           #currentFormat:Lorg/dom4j/io/OutputFormat;
    .end local v1           #currentIndent:Ljava/lang/String;
    .end local v4           #saveNewlines:Z
    .end local v5           #saveTrimText:Z
    .end local v7           #state:Lorg/dom4j/io/HTMLWriter$FormatState;
    :cond_3
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    goto :goto_0
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
    .line 322
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

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
    .line 267
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x5

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    .line 269
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
