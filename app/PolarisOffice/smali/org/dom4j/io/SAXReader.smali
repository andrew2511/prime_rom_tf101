.class public Lorg/dom4j/io/SAXReader;
.super Ljava/lang/Object;
.source "SAXReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/SAXReader$SAXEntityResolver;
    }
.end annotation


# static fields
.field private static final SAX_DECL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final SAX_LEXICALHANDLER:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final SAX_LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final SAX_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SAX_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SAX_STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private encoding:Ljava/lang/String;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private ignoreComments:Z

.field private includeExternalDTDDeclarations:Z

.field private includeInternalDTDDeclarations:Z

.field private mergeAdjacentText:Z

.field private stringInternEnabled:Z

.field private stripWhitespaceText:Z

.field private validating:Z

.field private xmlFilter:Lorg/xml/sax/XMLFilter;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "xmlReaderClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 168
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "xmlReaderClassName"
    .parameter "validating"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_0

    .line 174
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 173
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 177
    :cond_0
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 2
    .parameter "factory"
    .parameter "validating"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 151
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .parameter "xmlReader"

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 2
    .parameter "xmlReader"
    .parameter "validating"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 160
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 161
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "validating"

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 115
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 118
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 127
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 142
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 143
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "path"
    .parameter "handler"

    .prologue
    .line 779
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 780
    return-void
.end method

.method protected configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 4
    .parameter "reader"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 911
    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-static {p1, v1, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 914
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    invoke-static {p1, v1, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 917
    iget-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    if-eqz v1, :cond_1

    .line 918
    :cond_0
    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    invoke-static {p1, v1, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 922
    :cond_1
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-static {p1, v1, v3}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 924
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 927
    const-string v1, "http://xml.org/sax/features/string-interning"

    .line 928
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStringInternEnabled()Z

    move-result v2

    .line 927
    invoke-static {p1, v1, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 940
    const-string v1, "http://xml.org/sax/features/use-locator2"

    .line 939
    invoke-static {p1, v1, v3}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 944
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    .line 945
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v2

    .line 944
    invoke-interface {p1, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 947
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_3

    .line 948
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 958
    :cond_2
    :goto_0
    return-void

    .line 950
    :cond_3
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 953
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 954
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Validation not supported for XMLReader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 3
    .parameter "reader"

    .prologue
    .line 969
    new-instance v0, Lorg/dom4j/io/SAXContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    return-object v0
.end method

.method protected createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;
    .locals 4
    .parameter "systemId"

    .prologue
    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, prefix:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 976
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 978
    .local v0, idx:I
    if-lez v0, :cond_0

    .line 979
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 983
    .end local v0           #idx:I
    :cond_0
    new-instance v2, Lorg/dom4j/io/SAXReader$SAXEntityResolver;

    invoke-direct {v2, v1}, Lorg/dom4j/io/SAXReader$SAXEntityResolver;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v0

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 645
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method protected installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;
    .locals 5
    .parameter "reader"

    .prologue
    .line 848
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLFilter()Lorg/xml/sax/XMLFilter;

    move-result-object v1

    .line 850
    .local v1, filter:Lorg/xml/sax/XMLFilter;
    if-eqz v1, :cond_1

    .line 852
    move-object v3, v1

    .line 855
    .local v3, root:Lorg/xml/sax/XMLFilter;
    :goto_0
    invoke-interface {v3}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 857
    .local v2, parent:Lorg/xml/sax/XMLReader;
    instance-of v4, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v4, :cond_0

    .line 858
    move-object v0, v2

    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object v3, v0

    .line 854
    goto :goto_0

    .line 864
    :cond_0
    invoke-interface {v3, p1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    move-object v4, v1

    .line 869
    .end local v2           #parent:Lorg/xml/sax/XMLReader;
    .end local v3           #root:Lorg/xml/sax/XMLFilter;
    :goto_1
    return-object v4

    :cond_1
    move-object v4, p1

    goto :goto_1
.end method

.method public isIgnoreComments()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    return v0
.end method

.method public isIncludeExternalDTDDeclarations()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    return v0
.end method

.method public isIncludeInternalDTDDeclarations()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    return v0
.end method

.method public isMergeAdjacentText()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    return v0
.end method

.method public isStringInternEnabled()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    return v0
.end method

.method public isStripWhitespaceText()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return v0
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 244
    .local v3, source:Lorg/xml/sax/InputSource;
    iget-object v4, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 245
    iget-object v4, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 251
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "file://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, sb:Ljava/lang/StringBuffer;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_1
    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 264
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0, v3}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 265
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #source:Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 266
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v4, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 339
    .local v0, source:Lorg/xml/sax/InputSource;
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2
    .parameter "in"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v0, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 391
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 361
    .local v0, source:Lorg/xml/sax/InputSource;
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 365
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2
    .parameter "reader"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 412
    .local v0, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, source:Lorg/xml/sax/InputSource;
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, systemID:Ljava/lang/String;
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, source:Lorg/xml/sax/InputSource;
    iget-object v2, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v2

    return-object v2
.end method

.method public read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 435
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 437
    .local v7, reader:Lorg/xml/sax/XMLReader;
    invoke-virtual {p0, v7}, Lorg/dom4j/io/SAXReader;->installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 439
    iget-object v9, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 441
    .local v9, thatEntityResolver:Lorg/xml/sax/EntityResolver;
    if-nez v9, :cond_0

    .line 443
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .line 442
    invoke-virtual {p0, v10}, Lorg/dom4j/io/SAXReader;->createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;

    move-result-object v9

    .line 444
    iput-object v9, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 447
    :cond_0
    invoke-interface {v7, v9}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 449
    invoke-virtual {p0, v7}, Lorg/dom4j/io/SAXReader;->createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;

    move-result-object v1

    .line 450
    .local v1, contentHandler:Lorg/dom4j/io/SAXContentHandler;
    invoke-virtual {v1, v9}, Lorg/dom4j/io/SAXContentHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 451
    invoke-virtual {v1, p1}, Lorg/dom4j/io/SAXContentHandler;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 453
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeInternalDTDDeclarations()Z

    move-result v4

    .line 454
    .local v4, internal:Z
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeExternalDTDDeclarations()Z

    move-result v3

    .line 456
    .local v3, external:Z
    invoke-virtual {v1, v4}, Lorg/dom4j/io/SAXContentHandler;->setIncludeInternalDTDDeclarations(Z)V

    .line 457
    invoke-virtual {v1, v3}, Lorg/dom4j/io/SAXContentHandler;->setIncludeExternalDTDDeclarations(Z)V

    .line 458
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isMergeAdjacentText()Z

    move-result v10

    invoke-virtual {v1, v10}, Lorg/dom4j/io/SAXContentHandler;->setMergeAdjacentText(Z)V

    .line 459
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStripWhitespaceText()Z

    move-result v10

    invoke-virtual {v1, v10}, Lorg/dom4j/io/SAXContentHandler;->setStripWhitespaceText(Z)V

    .line 460
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIgnoreComments()Z

    move-result v10

    invoke-virtual {v1, v10}, Lorg/dom4j/io/SAXContentHandler;->setIgnoreComments(Z)V

    .line 461
    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 463
    invoke-virtual {p0, v7, v1}, Lorg/dom4j/io/SAXReader;->configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 465
    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 467
    invoke-virtual {v1}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 468
    .end local v1           #contentHandler:Lorg/dom4j/io/SAXContentHandler;
    .end local v3           #external:Z
    .end local v4           #internal:Z
    .end local v7           #reader:Lorg/xml/sax/XMLReader;
    .end local v9           #thatEntityResolver:Lorg/xml/sax/EntityResolver;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 469
    .local v2, e:Ljava/lang/Exception;
    instance-of v10, v2, Lorg/xml/sax/SAXParseException;

    if-eqz v10, :cond_2

    .line 471
    move-object v0, v2

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object v6, v0

    .line 472
    .local v6, parseException:Lorg/xml/sax/SAXParseException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, systemId:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 475
    const-string v8, ""

    .line 478
    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "Error on line "

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " of document "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 480
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 478
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, message:Ljava/lang/String;
    new-instance v10, Lorg/dom4j/DocumentException;

    invoke-direct {v10, v5, v2}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 484
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #parseException:Lorg/xml/sax/SAXParseException;
    .end local v8           #systemId:Ljava/lang/String;
    :cond_2
    new-instance v10, Lorg/dom4j/DocumentException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 791
    return-void
.end method

.method public resetHandlers()V
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->resetHandlers()V

    .line 813
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 803
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 804
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0
    .parameter "dispatchHandler"

    .prologue
    .line 881
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 882
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 663
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 664
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 749
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .parameter "entityResolver"

    .prologue
    .line 702
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 703
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .parameter "errorHandler"

    .prologue
    .line 683
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 684
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0
    .parameter "ignoreComments"

    .prologue
    .line 634
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 635
    return-void
.end method

.method public setIncludeExternalDTDDeclarations(Z)V
    .locals 0
    .parameter "include"

    .prologue
    .line 553
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 554
    return-void
.end method

.method public setIncludeInternalDTDDeclarations(Z)V
    .locals 0
    .parameter "include"

    .prologue
    .line 531
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 532
    return-void
.end method

.method public setMergeAdjacentText(Z)V
    .locals 0
    .parameter "mergeAdjacentText"

    .prologue
    .line 594
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 595
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setStringInternEnabled(Z)V
    .locals 0
    .parameter "stringInternEnabled"

    .prologue
    .line 574
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 575
    return-void
.end method

.method public setStripWhitespaceText(Z)V
    .locals 0
    .parameter "stripWhitespaceText"

    .prologue
    .line 615
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 616
    return-void
.end method

.method public setValidation(Z)V
    .locals 0
    .parameter "validation"

    .prologue
    .line 509
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 510
    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 831
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    .line 832
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 728
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 729
    return-void
.end method

.method public setXMLReaderClassName(Ljava/lang/String;)V
    .locals 1
    .parameter "xmlReaderClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 766
    return-void
.end method
