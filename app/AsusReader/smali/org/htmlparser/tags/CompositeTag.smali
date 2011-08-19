.class public Lorg/htmlparser/tags/CompositeTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "CompositeTag.java"


# static fields
.field protected static final mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;


# instance fields
.field protected mEndTag:Lorg/htmlparser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    sput-object v0, Lorg/htmlparser/tags/CompositeTag;->mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 67
    sget-object v0, Lorg/htmlparser/tags/CompositeTag;->mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/CompositeTag;->setThisScanner(Lorg/htmlparser/scanners/Scanner;)V

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 3
    .parameter "visitor"

    .prologue
    .line 469
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->shouldRecurseSelf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitTag(Lorg/htmlparser/Tag;)V

    .line 471
    :cond_0
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->shouldRecurseChildren()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v1

    .line 476
    .local v1, children:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v0

    .line 479
    .local v0, child:Lorg/htmlparser/Node;
    invoke-interface {v0, p1}, Lorg/htmlparser/Node;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    goto :goto_0

    .line 482
    .end local v0           #child:Lorg/htmlparser/Node;
    .end local v1           #children:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    if-eq p0, v2, :cond_2

    .line 483
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/htmlparser/Tag;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 485
    :cond_2
    return-void
.end method

.method public children()Lorg/htmlparser/util/SimpleNodeIterator;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .line 83
    .local v0, ret:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    return-object v0

    .line 81
    .end local v0           #ret:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    new-instance v1, Lorg/htmlparser/util/NodeList;

    invoke-direct {v1}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .restart local v0       #ret:Lorg/htmlparser/util/SimpleNodeIterator;
    goto :goto_0
.end method

.method public collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "list"
    .parameter "filter"

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Lorg/htmlparser/nodes/TagNode;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    .line 435
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/htmlparser/Node;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/htmlparser/Tag;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    .line 439
    :cond_1
    return-void
.end method

.method public getChildrenHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v1

    .local v1, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/nodes/AbstractNode;

    .line 449
    .local v2, node:Lorg/htmlparser/nodes/AbstractNode;
    invoke-virtual {v2}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 451
    .end local v2           #node:Lorg/htmlparser/nodes/AbstractNode;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getEndTag()Lorg/htmlparser/Tag;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-super {p0, v2}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, ret:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 580
    return-object v0
.end method

.method protected putChildrenInto(Ljava/lang/StringBuffer;Z)V
    .locals 4
    .parameter "sb"
    .parameter "verbatim"

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 156
    .local v1, node:Lorg/htmlparser/Node;
    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/htmlparser/Node;->getStartPosition()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/Node;->getEndPosition()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 157
    :cond_1
    invoke-interface {v1}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    .end local v1           #node:Lorg/htmlparser/Node;
    :cond_2
    return-void
.end method

.method protected putEndTagInto(Ljava/lang/StringBuffer;Z)V
    .locals 2
    .parameter "sb"
    .parameter "verbatim"

    .prologue
    .line 170
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    invoke-interface {v0}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    invoke-interface {v1}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    return-void
.end method

.method public setEndTag(Lorg/htmlparser/Tag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 522
    iput-object p1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    .line 523
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2
    .parameter "verbatim"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v0, ret:Ljava/lang/StringBuffer;
    invoke-super {p0, p1}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->isEmptyXmlTag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->putChildrenInto(Ljava/lang/StringBuffer;Z)V

    .line 190
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->putEndTagInto(Ljava/lang/StringBuffer;Z)V

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toPlainTextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v1, stringRepresentation:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 564
    .local v0, ret:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/tags/CompositeTag;->toString(ILjava/lang/StringBuffer;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(ILjava/lang/StringBuffer;)V
    .locals 4
    .parameter "level"
    .parameter "buffer"

    .prologue
    .line 606
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 607
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    invoke-super {p0}, Lorg/htmlparser/nodes/TagNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_1
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    .line 613
    .local v2, node:Lorg/htmlparser/Node;
    instance-of v3, v2, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v3, :cond_1

    .line 614
    check-cast v2, Lorg/htmlparser/tags/CompositeTag;

    .end local v2           #node:Lorg/htmlparser/Node;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, p2}, Lorg/htmlparser/tags/CompositeTag;->toString(ILjava/lang/StringBuffer;)V

    goto :goto_1

    .line 617
    .restart local v2       #node:Lorg/htmlparser/Node;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-gt v1, p1, :cond_2

    .line 618
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 620
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 624
    .end local v2           #node:Lorg/htmlparser/Node;
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    if-eq p0, v3, :cond_5

    .line 628
    const/4 v1, 0x0

    :goto_3
    if-gt v1, p1, :cond_4

    .line 629
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 630
    :cond_4
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    :cond_5
    return-void
.end method
