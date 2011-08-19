.class public Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiteralElementAttributes"
.end annotation


# instance fields
.field private m_count:I

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V
    .registers 3
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    .line 561
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 3

    .prologue
    .line 571
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 573
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    .line 576
    :cond_19
    :goto_19
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return v0

    .line 574
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    goto :goto_19
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 11
    .parameter "name"

    .prologue
    .line 588
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    .line 611
    :goto_7
    return-object v7

    .line 589
    :cond_8
    const/4 v6, 0x0

    .line 590
    .local v6, uri:Ljava/lang/String;
    move-object v3, p1

    .line 591
    .local v3, localName:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 592
    .local v2, index:I
    const/4 v7, -0x1

    if-eq v7, v2, :cond_1e

    .line 593
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 594
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 596
    :cond_1e
    const/4 v5, 0x0

    .line 597
    .local v5, retNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v7}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 598
    .local v1, eum:Ljava/util/Iterator;
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 600
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 602
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, nsURI:Ljava/lang/String;
    if-nez v6, :cond_47

    if-eqz v4, :cond_4f

    :cond_47
    if-eqz v6, :cond_29

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 606
    :cond_4f
    new-instance v5, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    .end local v5           #retNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v8, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v5, v7, v0, v8}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v4           #nsURI:Ljava/lang/String;
    .restart local v5       #retNode:Lorg/w3c/dom/Node;
    :cond_58
    move-object v7, v5

    .line 611
    goto :goto_7
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 9
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 625
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    .line 642
    :goto_7
    return-object v4

    .line 626
    :cond_8
    const/4 v3, 0x0

    .line 627
    .local v3, retNode:Lorg/w3c/dom/Node;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 628
    .local v1, eum:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 631
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 633
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, nsURI:Ljava/lang/String;
    if-nez p1, :cond_31

    if-eqz v2, :cond_39

    :cond_31
    if-eqz p1, :cond_13

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 637
    :cond_39
    new-instance v3, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    .end local v3           #retNode:Lorg/w3c/dom/Node;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v2           #nsURI:Ljava/lang/String;
    .restart local v3       #retNode:Lorg/w3c/dom/Node;
    :cond_42
    move-object v4, v3

    .line 642
    goto :goto_7
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "i"

    .prologue
    .line 655
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    .line 656
    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #getter for: Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    move-object v0, v1

    goto :goto_13
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method
