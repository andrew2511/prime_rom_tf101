.class public Lorg/ccil/cowan/tagsoup/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# static fields
.field static options:Ljava/util/Hashtable;

.field private static theOutputEncoding:Ljava/lang/String;

.field private static theParser:Lorg/ccil/cowan/tagsoup/Parser;

.field private static theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    .line 34
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nocdata"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--files"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--reuse"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nobogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--any"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--emptybogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--norootbogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--pyxin"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--lexical"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--pyx"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--html"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--method="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--doctype-public="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--doctype-system="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--output-encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--omit-xml-declaration"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--help"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--version"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nodefaults"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nocolons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--norestart"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--ignorable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    .line 122
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    .line 123
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;
    .registers 7
    .parameter "w"

    .prologue
    .line 213
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--pyx"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 214
    new-instance v4, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v4, p0}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    .line 251
    .end local p0
    :goto_f
    return-object v4

    .line 217
    .restart local p0
    :cond_10
    new-instance v3, Lorg/ccil/cowan/tagsoup/XMLWriter;

    invoke-direct {v3, p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 218
    .local v3, x:Lorg/ccil/cowan/tagsoup/XMLWriter;
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--html"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 219
    const-string v4, "method"

    const-string v5, "html"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "omit-xml-declaration"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2d
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--method="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 223
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--method="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, method:Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 225
    const-string v4, "method"

    invoke-virtual {v3, v4, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v2           #method:Ljava/lang/String;
    :cond_48
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-public="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 229
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-public="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, doctype_public:Ljava/lang/String;
    if-eqz v0, :cond_63

    .line 231
    const-string v4, "doctype-public"

    invoke-virtual {v3, v4, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v0           #doctype_public:Ljava/lang/String;
    :cond_63
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-system="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 235
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-system="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, doctype_system:Ljava/lang/String;
    if-eqz v1, :cond_7e

    .line 237
    const-string v4, "doctype-system"

    invoke-virtual {v3, v4, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v1           #doctype_system:Ljava/lang/String;
    :cond_7e
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--output-encoding="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 241
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--output-encoding="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    .line 243
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    if-eqz v4, :cond_9f

    .line 244
    const-string v4, "encoding"

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_9f
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--omit-xml-declaration"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 248
    const-string v4, "omit-xml-declaration"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_b0
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 251
    goto/16 :goto_f
.end method

.method private static doHelp()V
    .registers 6

    .prologue
    .line 104
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "usage: java -jar tagsoup-*.jar "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 105
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, " [ "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x1

    .line 107
    .local v2, first:Z
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 108
    if-nez v2, :cond_24

    .line 109
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "| "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 111
    :cond_24
    const/4 v2, 0x0

    .line 112
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 113
    .local v3, key:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 114
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 115
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    :cond_43
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_15

    .line 118
    .end local v3           #key:Ljava/lang/String;
    :cond_4b
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "]*"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private static getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I
    .registers 9
    .parameter "options"
    .parameter "argv"

    .prologue
    const/4 v6, 0x0

    .line 258
    const/4 v2, 0x0

    .local v2, optind:I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_10

    .line 259
    aget-object v0, p1, v2

    .line 260
    .local v0, arg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_11

    .line 278
    .end local v0           #arg:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_10
    return v2

    .line 262
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :cond_11
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 263
    .local v1, eqsign:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2a

    .line 264
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 265
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_2a
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 268
    if-nez v3, :cond_3a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 269
    :cond_3a
    invoke-virtual {p0, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 273
    :cond_3e
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_37
.end method

.method private static hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .registers 5
    .parameter "options"
    .parameter "option"

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 286
    :goto_8
    return v0

    .line 285
    :cond_9
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_13

    move v0, v2

    goto :goto_8

    .line 286
    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    invoke-static {v6, p0}, Lorg/ccil/cowan/tagsoup/CommandLine;->getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, optind:I
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--help"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 67
    invoke-static {}, Lorg/ccil/cowan/tagsoup/CommandLine;->doHelp()V

    .line 99
    :cond_13
    :goto_13
    return-void

    .line 70
    :cond_14
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--version"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 71
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "TagSoup version 1.2"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 74
    :cond_26
    array-length v6, p0

    if-ne v6, v3, :cond_31

    .line 75
    const-string v6, ""

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_13

    .line 77
    :cond_31
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--files"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 78
    move v1, v3

    .local v1, i:I
    :goto_3c
    array-length v6, p0

    if-ge v1, v6, :cond_13

    .line 79
    aget-object v5, p0, v1

    .line 81
    .local v5, src:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 82
    .local v2, j:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_8a

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, dst:Ljava/lang/String;
    :goto_5d
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "src: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dst: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, os:Ljava/io/OutputStream;
    invoke-static {v5, v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 84
    .end local v0           #dst:Ljava/lang/String;
    .end local v4           #os:Ljava/io/OutputStream;
    :cond_8a
    const-string v6, ".xhtml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dst:Ljava/lang/String;
    goto :goto_5d

    .line 87
    .end local v0           #dst:Ljava/lang/String;
    :cond_a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #dst:Ljava/lang/String;
    goto :goto_5d

    .line 94
    .end local v0           #dst:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v5           #src:Ljava/lang/String;
    :cond_bf
    move v1, v3

    .restart local v1       #i:I
    :goto_c0
    array-length v6, p0

    if-ge v1, v6, :cond_13

    .line 95
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "src: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    aget-object v6, p0, v1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0
.end method

.method private static process(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 11
    .parameter "src"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 130
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--reuse"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 131
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    if-nez v5, :cond_17

    new-instance v5, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    .line 132
    :cond_17
    sget-object v2, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    .line 137
    .local v2, r:Lorg/xml/sax/XMLReader;
    :goto_19
    new-instance v5, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    .line 138
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nocdata"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 141
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 144
    :cond_36
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4a

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--html"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 145
    :cond_4a
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 148
    :cond_4f
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nobogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 149
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 152
    :cond_5e
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--any"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 153
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 159
    :cond_6d
    :goto_6d
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--norootbogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 160
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 163
    :cond_7c
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nodefaults"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 164
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 166
    :cond_8b
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nocolons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 167
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 170
    :cond_9a
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--norestart"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 171
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 174
    :cond_a9
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--ignorable"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 175
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 178
    :cond_b8
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--pyxin"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 179
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    new-instance v6, Lorg/ccil/cowan/tagsoup/PYXScanner;

    invoke-direct {v6}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    :cond_cc
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    if-nez v5, :cond_130

    .line 184
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local v4, w:Ljava/io/Writer;
    :goto_d5
    invoke-static {v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 190
    .local v1, h:Lorg/xml/sax/ContentHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 191
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--lexical"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ef

    instance-of v5, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v5, :cond_ef

    .line 192
    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_ef
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    .line 195
    .local v3, s:Lorg/xml/sax/InputSource;
    const-string v5, ""

    if-eq p0, v5, :cond_138

    .line 196
    invoke-virtual {v3, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 201
    :goto_fb
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--encoding="

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_114

    .line 203
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--encoding="

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, encoding:Ljava/lang/String;
    if-eqz v0, :cond_114

    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 206
    .end local v0           #encoding:Ljava/lang/String;
    :cond_114
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 207
    return-void

    .line 135
    .end local v1           #h:Lorg/xml/sax/ContentHandler;
    .end local v2           #r:Lorg/xml/sax/XMLReader;
    .end local v3           #s:Lorg/xml/sax/InputSource;
    .end local v4           #w:Ljava/io/Writer;
    :cond_118
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .restart local v2       #r:Lorg/xml/sax/XMLReader;
    goto/16 :goto_19

    .line 155
    :cond_11f
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--emptybogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 156
    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_6d

    .line 187
    :cond_130
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .restart local v4       #w:Ljava/io/Writer;
    goto :goto_d5

    .line 199
    .restart local v1       #h:Lorg/xml/sax/ContentHandler;
    .restart local v3       #s:Lorg/xml/sax/InputSource;
    :cond_138
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v5}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_fb
.end method
