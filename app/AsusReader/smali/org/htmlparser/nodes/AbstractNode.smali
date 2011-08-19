.class public abstract Lorg/htmlparser/nodes/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/Node;


# instance fields
.field protected children:Lorg/htmlparser/util/NodeList;

.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected nodeBegin:I

.field protected nodeEnd:I

.field protected parent:Lorg/htmlparser/Node;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;II)V
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 81
    iput p2, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 82
    iput p3, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 83
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    .line 84
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 85
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "list"
    .parameter "filter"

    .prologue
    .line 192
    invoke-interface {p2, p0}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1, p0}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 194
    :cond_0
    return-void
.end method

.method public doSemanticAction()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 413
    return-void
.end method

.method public getChildren()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    return-object v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    return v0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public getParent()Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChildren(Lorg/htmlparser/util/NodeList;)V
    .locals 0
    .parameter "children"

    .prologue
    .line 292
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 293
    return-void
.end method

.method public setEndPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 247
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 248
    return-void
.end method

.method public setPage(Lorg/htmlparser/lexer/Page;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 211
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 212
    return-void
.end method

.method public setParent(Lorg/htmlparser/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 274
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    .line 275
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 229
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 230
    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toHtml(Z)Ljava/lang/String;
.end method
