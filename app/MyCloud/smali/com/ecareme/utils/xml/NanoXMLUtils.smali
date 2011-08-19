.class public Lcom/ecareme/utils/xml/NanoXMLUtils;
.super Ljava/lang/Object;
.source "NanoXMLUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeElement(Ljava/lang/String;Ljava/lang/String;)Lnet/n3/nanoxml/XMLElement;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 32
    new-instance v0, Lnet/n3/nanoxml/XMLElement;

    invoke-direct {v0}, Lnet/n3/nanoxml/XMLElement;-><init>()V

    .line 33
    .local v0, rtn:Lnet/n3/nanoxml/XMLElement;
    invoke-virtual {v0, p0}, Lnet/n3/nanoxml/XMLElement;->setName(Ljava/lang/String;)V

    .line 34
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lnet/n3/nanoxml/XMLElement;->setContent(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-object v0
.end method

.method public static parseXML(Ljava/io/File;)Lnet/n3/nanoxml/XMLElement;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/xml/NanoXMLException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/ecareme/utils/xml/NanoXMLUtils;->parseXML(Ljava/io/Reader;)Lnet/n3/nanoxml/XMLElement;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v1, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseXML(Ljava/io/InputStream;)Lnet/n3/nanoxml/XMLElement;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/xml/NanoXMLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lnet/n3/nanoxml/StdXMLReader;

    invoke-direct {v0, p0}, Lnet/n3/nanoxml/StdXMLReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/ecareme/utils/xml/NanoXMLUtils;->parseXML(Lnet/n3/nanoxml/IXMLReader;)Lnet/n3/nanoxml/XMLElement;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/io/Reader;)Lnet/n3/nanoxml/XMLElement;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/xml/NanoXMLException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lnet/n3/nanoxml/StdXMLReader;

    invoke-direct {v0, p0}, Lnet/n3/nanoxml/StdXMLReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/ecareme/utils/xml/NanoXMLUtils;->parseXML(Lnet/n3/nanoxml/IXMLReader;)Lnet/n3/nanoxml/XMLElement;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/lang/String;)Lnet/n3/nanoxml/XMLElement;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/xml/NanoXMLException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ecareme/utils/xml/NanoXMLUtils;->parseXML(Ljava/io/Reader;)Lnet/n3/nanoxml/XMLElement;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v1, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseXML(Lnet/n3/nanoxml/IXMLReader;)Lnet/n3/nanoxml/XMLElement;
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/xml/NanoXMLException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lnet/n3/nanoxml/XMLParserFactory;->createDefaultXMLParser()Lnet/n3/nanoxml/IXMLParser;

    move-result-object v1

    .line 46
    .local v1, parser:Lnet/n3/nanoxml/IXMLParser;
    invoke-interface {v1, p0}, Lnet/n3/nanoxml/IXMLParser;->setReader(Lnet/n3/nanoxml/IXMLReader;)V

    .line 47
    invoke-interface {v1}, Lnet/n3/nanoxml/IXMLParser;->parse()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/n3/nanoxml/XMLElement;
    :try_end_0
    .catch Lnet/n3/nanoxml/XMLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    .line 49
    .end local v1           #parser:Lnet/n3/nanoxml/IXMLParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 51
    .local v0, e:Lnet/n3/nanoxml/XMLException;
    new-instance v2, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v2, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 53
    .end local v0           #e:Lnet/n3/nanoxml/XMLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v2, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v2, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/ecareme/utils/xml/NanoXMLException;

    invoke-direct {v2, v0}, Lcom/ecareme/utils/xml/NanoXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/File;Z)V
    .locals 1
    .parameter "xml"
    .parameter "file"
    .parameter "prettyPrint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0, p2}, Lcom/ecareme/utils/xml/NanoXMLUtils;->writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/Writer;Z)V

    .line 142
    return-void
.end method

.method public static writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/OutputStream;Z)V
    .locals 1
    .parameter "xml"
    .parameter "out"
    .parameter "prettyPrint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lnet/n3/nanoxml/XMLWriter;

    invoke-direct {v0, p1}, Lnet/n3/nanoxml/XMLWriter;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v0, writer:Lnet/n3/nanoxml/XMLWriter;
    invoke-virtual {v0, p0, p2}, Lnet/n3/nanoxml/XMLWriter;->write(Lnet/n3/nanoxml/IXMLElement;Z)V

    .line 148
    return-void
.end method

.method public static writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/Writer;Z)V
    .locals 1
    .parameter "xml"
    .parameter "out"
    .parameter "prettyPrint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lnet/n3/nanoxml/XMLWriter;

    invoke-direct {v0, p1}, Lnet/n3/nanoxml/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 153
    .local v0, writer:Lnet/n3/nanoxml/XMLWriter;
    invoke-virtual {v0, p0, p2}, Lnet/n3/nanoxml/XMLWriter;->write(Lnet/n3/nanoxml/IXMLElement;Z)V

    .line 154
    return-void
.end method

.method public static writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/lang/String;Z)V
    .locals 1
    .parameter "xml"
    .parameter "file"
    .parameter "prettyPrint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/ecareme/utils/xml/NanoXMLUtils;->writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/Writer;Z)V

    .line 137
    return-void
.end method

.method public static xmlToString(Lnet/n3/nanoxml/IXMLElement;)Ljava/lang/String;
    .locals 1
    .parameter "xml"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ecareme/utils/xml/NanoXMLUtils;->xmlToString(Lnet/n3/nanoxml/IXMLElement;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xmlToString(Lnet/n3/nanoxml/IXMLElement;Z)Ljava/lang/String;
    .locals 3
    .parameter "xml"
    .parameter "prettyPrint"

    .prologue
    .line 116
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 119
    .local v1, out:Ljava/io/StringWriter;
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/ecareme/utils/xml/NanoXMLUtils;->writeXML(Lnet/n3/nanoxml/IXMLElement;Ljava/io/Writer;Z)V

    .line 120
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static xmlToSystemOut(Lnet/n3/nanoxml/IXMLElement;)V
    .locals 3
    .parameter "xml"

    .prologue
    .line 103
    new-instance v1, Lnet/n3/nanoxml/XMLWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Lnet/n3/nanoxml/XMLWriter;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v1, writer:Lnet/n3/nanoxml/XMLWriter;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v2}, Lnet/n3/nanoxml/XMLWriter;->write(Lnet/n3/nanoxml/IXMLElement;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
