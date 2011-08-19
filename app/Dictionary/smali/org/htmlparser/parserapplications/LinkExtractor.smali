.class public Lorg/htmlparser/parserapplications/LinkExtractor;
.super Ljava/lang/Object;
.source "LinkExtractor.java"


# static fields
.field static class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    .line 57
    array-length v0, p0

    if-gtz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    const-string v1, "Enter the URL to extract links from:"

    const-string v2, "Web Site"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "http://htmlparser.sourceforge.net/wiki/"

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    move-object v1, v0

    .line 72
    .end local v0           #url:Ljava/lang/String;
    .local v1, url:Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v2, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.htmlparser.tags.LinkTag"

    invoke-static {v2}, Lorg/htmlparser/parserapplications/LinkExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    :goto_1
    invoke-direct {v0, v2}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 73
    .local v0, filter:Lorg/htmlparser/NodeFilter;
    const/4 v2, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_3

    const/4 v2, 0x1

    aget-object p0, p0, v2

    .end local p0
    const-string v2, "-maillinks"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    new-instance p0, Lorg/htmlparser/filters/AndFilter;

    new-instance v2, Lorg/htmlparser/parserapplications/LinkExtractor$1;

    invoke-direct {v2}, Lorg/htmlparser/parserapplications/LinkExtractor$1;-><init>()V

    invoke-direct {p0, v0, v2}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .line 86
    .end local v0           #filter:Lorg/htmlparser/NodeFilter;
    .local p0, filter:Lorg/htmlparser/NodeFilter;
    :goto_2
    :try_start_0
    new-instance v0, Lorg/htmlparser/Parser;

    invoke-direct {v0, v1}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, parser:Lorg/htmlparser/Parser;
    invoke-virtual {v0, p0}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 88
    .local v0, list:Lorg/htmlparser/util/NodeList;
    const/4 p0, 0x0

    .end local v1           #url:Ljava/lang/String;
    .local p0, i:I
    :goto_3
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 89
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 71
    .end local v0           #list:Lorg/htmlparser/util/NodeList;
    .local p0, args:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .local v0, url:Ljava/lang/String;
    move-object v1, v0

    .end local v0           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_1
    sget-object v2, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    goto :goto_1

    .line 91
    .end local v1           #url:Ljava/lang/String;
    .end local p0           #args:[Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 93
    .local p0, e:Lorg/htmlparser/util/ParserException;
    invoke-virtual {p0}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    .line 95
    .end local p0           #e:Lorg/htmlparser/util/ParserException;
    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 96
    return-void

    .local v0, filter:Lorg/htmlparser/NodeFilter;
    .restart local v1       #url:Ljava/lang/String;
    :cond_3
    move-object p0, v0

    .end local v0           #filter:Lorg/htmlparser/NodeFilter;
    .local p0, filter:Lorg/htmlparser/NodeFilter;
    goto :goto_2

    .end local v1           #url:Ljava/lang/String;
    .local v0, url:Ljava/lang/String;
    .local p0, args:[Ljava/lang/String;
    :cond_4
    move-object v1, v0

    .end local v0           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    goto :goto_0
.end method
