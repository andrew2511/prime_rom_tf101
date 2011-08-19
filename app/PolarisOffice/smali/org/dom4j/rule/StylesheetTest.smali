.class public Lorg/dom4j/rule/StylesheetTest;
.super Lorg/dom4j/AbstractTestCase;
.source "StylesheetTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected stylesheet:Lorg/dom4j/rule/Stylesheet;

.field protected templates:[Ljava/lang/String;

.field protected templates2:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 26
    const-string v1, "/"

    aput-object v1, v0, v3

    .line 27
    const-string v1, "*"

    aput-object v1, v0, v4

    .line 28
    const-string v1, "root"

    aput-object v1, v0, v5

    .line 29
    const-string v1, "author"

    aput-object v1, v0, v6

    .line 30
    const-string v1, "@name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 31
    const-string v2, "root/author"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 32
    const-string v2, "author[@location=\'UK\']"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 33
    const-string v2, "root/author[@location=\'UK\']"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 34
    const-string v2, "root//author[@location=\'UK\']"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/dom4j/rule/StylesheetTest;->templates:[Ljava/lang/String;

    .line 36
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "para"

    aput-object v1, v0, v5

    const-string v1, "*"

    aput-object v1, v0, v6

    iput-object v0, p0, Lorg/dom4j/rule/StylesheetTest;->templates2:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method static access$0(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 41
    sget-object v0, Lorg/dom4j/rule/StylesheetTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.rule.StylesheetTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/rule/StylesheetTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 42
    return-void

    .line 41
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected addTemplate(Ljava/lang/String;)V
    .locals 5
    .parameter "match"

    .prologue
    .line 113
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Adding template match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v1

    .line 117
    .local v1, pattern:Lorg/dom4j/rule/Pattern;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 118
    const-string v3, "........................................"

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lorg/dom4j/rule/StylesheetTest$4;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/rule/StylesheetTest$4;-><init>(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/String;)V

    .line 131
    .local v0, action:Lorg/dom4j/rule/Action;
    new-instance v2, Lorg/dom4j/rule/Rule;

    invoke-direct {v2, v1, v0}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V

    .line 132
    .local v2, rule:Lorg/dom4j/rule/Rule;
    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    invoke-virtual {v3, v2}, Lorg/dom4j/rule/Stylesheet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 133
    return-void
.end method

.method protected setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 103
    new-instance v0, Lorg/dom4j/rule/Stylesheet;

    invoke-direct {v0}, Lorg/dom4j/rule/Stylesheet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    .line 104
    iget-object v0, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    new-instance v1, Lorg/dom4j/rule/StylesheetTest$3;

    invoke-direct {v1, p0}, Lorg/dom4j/rule/StylesheetTest$3;-><init>(Lorg/dom4j/rule/StylesheetTest;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/rule/Stylesheet;->setValueOfAction(Lorg/dom4j/rule/Action;)V

    .line 110
    return-void
.end method

.method public testFireRuleForNode()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v1, b:Ljava/lang/StringBuffer;
    new-instance v4, Lorg/dom4j/rule/Stylesheet;

    invoke-direct {v4}, Lorg/dom4j/rule/Stylesheet;-><init>()V

    .line 82
    .local v4, s:Lorg/dom4j/rule/Stylesheet;
    const-string v5, "url"

    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v2

    .line 83
    .local v2, pattern:Lorg/dom4j/rule/Pattern;
    new-instance v0, Lorg/dom4j/rule/StylesheetTest$2;

    invoke-direct {v0, p0, v1, v4}, Lorg/dom4j/rule/StylesheetTest$2;-><init>(Lorg/dom4j/rule/StylesheetTest;Ljava/lang/StringBuffer;Lorg/dom4j/rule/Stylesheet;)V

    .line 90
    .local v0, action:Lorg/dom4j/rule/Action;
    new-instance v3, Lorg/dom4j/rule/Rule;

    invoke-direct {v3, v2, v0}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V

    .line 91
    .local v3, r:Lorg/dom4j/rule/Rule;
    invoke-virtual {v4, v3}, Lorg/dom4j/rule/Stylesheet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 93
    iget-object v5, p0, Lorg/dom4j/rule/StylesheetTest;->document:Lorg/dom4j/Document;

    new-instance v6, Lorg/dom4j/xpath/DefaultXPath;

    const-string v7, "root/author/url"

    invoke-direct {v6, v7}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;)V

    .line 95
    const-string v5, "Check url is processed twice"

    const-string v6, "urlurl"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/dom4j/rule/StylesheetTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public testLittleDoc()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->templates2:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 65
    const-string v3, "/xml/test/littledoc.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/StylesheetTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 67
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v3, Lorg/dom4j/rule/Stylesheet;

    invoke-direct {v3}, Lorg/dom4j/rule/Stylesheet;-><init>()V

    iput-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    .line 68
    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    new-instance v4, Lorg/dom4j/rule/StylesheetTest$1;

    invoke-direct {v4, p0}, Lorg/dom4j/rule/StylesheetTest$1;-><init>(Lorg/dom4j/rule/StylesheetTest;)V

    invoke-virtual {v3, v4}, Lorg/dom4j/rule/Stylesheet;->setValueOfAction(Lorg/dom4j/rule/Action;)V

    .line 75
    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    invoke-virtual {v3, v0}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;)V

    .line 76
    return-void

    .line 63
    .end local v0           #doc:Lorg/dom4j/Document;
    :cond_0
    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->templates2:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/rule/StylesheetTest;->addTemplate(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testRules()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lorg/dom4j/rule/StylesheetTest;->templates:[Ljava/lang/String;

    array-length v1, v2

    .local v1, size:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 51
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 52
    const-string v2, "........................................"

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 53
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 54
    const-string v2, "Running stylesheet"

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lorg/dom4j/rule/StylesheetTest;->stylesheet:Lorg/dom4j/rule/Stylesheet;

    iget-object v3, p0, Lorg/dom4j/rule/StylesheetTest;->document:Lorg/dom4j/Document;

    invoke-virtual {v2, v3}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;)V

    .line 58
    const-string v2, "Finished"

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->log(Ljava/lang/String;)V

    .line 59
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lorg/dom4j/rule/StylesheetTest;->templates:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/StylesheetTest;->addTemplate(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
