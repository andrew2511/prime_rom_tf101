.class public Lorg/htmlparser/scanners/StyleScanner;
.super Lorg/htmlparser/scanners/CompositeTagScanner;
.source "StyleScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    .locals 9
    .parameter "tag"
    .parameter "lexer"
    .parameter "stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->parseCDATA()Lorg/htmlparser/Node;

    move-result-object v2

    .line 72
    .local v2, content:Lorg/htmlparser/Node;
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v4

    .line 73
    .local v4, position:I
    invoke-virtual {p2, v8}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v3

    .line 74
    .local v3, node:Lorg/htmlparser/Node;
    if-eqz v3, :cond_1

    .line 75
    instance-of v6, v3, Lorg/htmlparser/Tag;

    if-eqz v6, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v6, v0

    invoke-interface {v6}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v6, v0

    invoke-interface {v6}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/htmlparser/Tag;->getIds()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2, v4}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    .line 79
    const/4 v3, 0x0

    .line 83
    :cond_1
    if-nez v3, :cond_2

    .line 85
    new-instance v1, Lorg/htmlparser/Attribute;

    const-string v6, "/style"

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, attribute:Lorg/htmlparser/Attribute;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 87
    .local v5, vector:Ljava/util/Vector;
    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v6

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-interface {v6, v7, v4, v4, v5}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v3

    .line 91
    .end local v1           #attribute:Lorg/htmlparser/Attribute;
    .end local v5           #vector:Ljava/util/Vector;
    :cond_2
    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v6, v0

    invoke-interface {p1, v6}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 92
    if-eqz v2, :cond_3

    .line 94
    new-instance v6, Lorg/htmlparser/util/NodeList;

    invoke-direct {v6, v2}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/Node;)V

    invoke-interface {p1, v6}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 95
    invoke-interface {v2, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 97
    :cond_3
    invoke-interface {v3, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 98
    invoke-interface {p1}, Lorg/htmlparser/Tag;->doSemanticAction()V

    .line 100
    return-object p1
.end method
