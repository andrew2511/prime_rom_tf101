.class Lorg/dom4j/io/SAXHelper;
.super Ljava/lang/Object;
.source "SAXHelper.java"


# static fields
.field private static loggedWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lorg/dom4j/io/SAXHelper;->loggedWarning:Z

    .line 25
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createXMLReader(Z)Lorg/xml/sax/XMLReader;
    .locals 5
    .parameter "validating"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, reader:Lorg/xml/sax/XMLReader;
    if-nez v1, :cond_0

    .line 78
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/dom4j/io/SAXHelper;->createXMLReaderViaJAXP(ZZ)Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 81
    :cond_0
    if-nez v1, :cond_1

    .line 83
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :cond_1
    if-nez v1, :cond_3

    .line 103
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Couldn\'t create SAX reader"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Warning: Caught exception attempting to use SAX to load a SAX XMLReader "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Warning: Exception was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 92
    const-string v3, "Warning: I will print the stack trace then carry on using the default SAX parser"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method

.method protected static createXMLReaderViaJAXP(ZZ)Lorg/xml/sax/XMLReader;
    .locals 4
    .parameter "validating"
    .parameter "namespaceAware"

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0, p1}, Lorg/dom4j/io/JAXPHelper;->createXMLReader(ZZ)Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Throwable;
    sget-boolean v1, Lorg/dom4j/io/SAXHelper;->loggedWarning:Z

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x1

    sput-boolean v1, Lorg/dom4j/io/SAXHelper;->loggedWarning:Z

    .line 130
    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Caught exception attempting to use JAXP to load a SAX XMLReader"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Warning: Exception was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isVerboseErrorReporting()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    :try_start_0
    const-string v1, "org.dom4j.verbose"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, flag:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 156
    .end local v0           #flag:Ljava/lang/String;
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v1

    :cond_0
    move v1, v2

    .line 156
    goto :goto_0
.end method

.method public static setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "reader"
    .parameter "featureName"
    .parameter "value"

    .prologue
    .line 49
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 58
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "reader"
    .parameter "propertyName"
    .parameter "value"

    .prologue
    .line 34
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 43
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    goto :goto_1
.end method
