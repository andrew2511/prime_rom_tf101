.class public Lorg/htmlparser/scanners/ScriptScanner;
.super Lorg/htmlparser/scanners/CompositeTagScanner;
.source "ScriptScanner.java"


# static fields
.field public static STRICT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/scanners/ScriptScanner;->STRICT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    .locals 11
    .parameter "tag"
    .parameter "lexer"
    .parameter "stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 103
    instance-of v8, p1, Lorg/htmlparser/tags/ScriptTag;

    if-eqz v8, :cond_1

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/tags/ScriptTag;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v8, "JScript.Encode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "VBScript.Encode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v8

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/htmlparser/scanners/ScriptDecoder;->Decode(Lorg/htmlparser/lexer/Page;Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, code:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/tags/ScriptTag;

    move-object v8, v0

    invoke-virtual {v8, v2}, Lorg/htmlparser/tags/ScriptTag;->setScriptCode(Ljava/lang/String;)V

    .line 114
    .end local v2           #code:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    :cond_1
    sget-boolean v8, Lorg/htmlparser/scanners/ScriptScanner;->STRICT:Z

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p2, v8}, Lorg/htmlparser/lexer/Lexer;->parseCDATA(Z)Lorg/htmlparser/Node;

    move-result-object v3

    .line 115
    .local v3, content:Lorg/htmlparser/Node;
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v6

    .line 116
    .local v6, position:I
    invoke-virtual {p2, v10}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v5

    .line 117
    .local v5, node:Lorg/htmlparser/Node;
    if-eqz v5, :cond_3

    .line 118
    instance-of v8, v5, Lorg/htmlparser/Tag;

    if-eqz v8, :cond_2

    move-object v0, v5

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v8, v0

    invoke-interface {v8}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v5

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v8, v0

    invoke-interface {v8}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lorg/htmlparser/Tag;->getIds()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p2, v6}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    .line 122
    const/4 v5, 0x0

    .line 126
    :cond_3
    if-nez v5, :cond_4

    .line 128
    new-instance v1, Lorg/htmlparser/Attribute;

    const-string v8, "/script"

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v1, attribute:Lorg/htmlparser/Attribute;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 130
    .local v7, vector:Ljava/util/Vector;
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v8

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v9

    invoke-interface {v8, v9, v6, v6, v7}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v5

    .line 134
    .end local v1           #attribute:Lorg/htmlparser/Attribute;
    .end local v7           #vector:Ljava/util/Vector;
    :cond_4
    move-object v0, v5

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v8, v0

    invoke-interface {p1, v8}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 135
    if-eqz v3, :cond_5

    .line 137
    new-instance v8, Lorg/htmlparser/util/NodeList;

    invoke-direct {v8, v3}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/Node;)V

    invoke-interface {p1, v8}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 138
    invoke-interface {v3, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 140
    :cond_5
    invoke-interface {v5, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 141
    invoke-interface {p1}, Lorg/htmlparser/Tag;->doSemanticAction()V

    .line 143
    return-object p1

    .end local v3           #content:Lorg/htmlparser/Node;
    .end local v5           #node:Lorg/htmlparser/Node;
    .end local v6           #position:I
    :cond_6
    move v8, v10

    .line 114
    goto :goto_0
.end method
