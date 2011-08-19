.class public abstract Lorg/dom4j/tree/AbstractElement;
.super Lorg/dom4j/tree/AbstractBranch;
.source "AbstractElement.java"

# interfaces
.implements Lorg/dom4j/Element;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final EMPTY_ITERATOR:Ljava/util/Iterator;

.field protected static final EMPTY_LIST:Ljava/util/List;

.field protected static final USE_STRINGVALUE_SEPARATOR:Z

.field protected static final VERBOSE_TOSTRING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 51
    sput-object v0, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    .line 54
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_LIST:Ljava/util/List;

    .line 56
    sget-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 4
    .parameter "visitor"

    .prologue
    .line 195
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Element;)V

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeCount()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->nodeCount()I

    move-result v3

    :goto_1
    if-lt v1, v3, :cond_1

    .line 210
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 201
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Attribute;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 208
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public add(Lorg/dom4j/Attribute;)V
    .locals 4
    .parameter "attribute"

    .prologue
    .line 626
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 627
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The Attribute already has an existing parent \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/IllegalAddException;

    invoke-direct {v2, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v2

    .line 633
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 637
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 639
    .local v1, oldAttribute:Lorg/dom4j/Attribute;
    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 647
    .end local v1           #oldAttribute:Lorg/dom4j/Attribute;
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public add(Lorg/dom4j/CDATA;)V
    .locals 0
    .parameter "cdata"

    .prologue
    .line 994
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 995
    return-void
.end method

.method public add(Lorg/dom4j/Comment;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 999
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 1003
    return-void
.end method

.method public add(Lorg/dom4j/Entity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 1006
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 1007
    return-void
.end method

.method public add(Lorg/dom4j/Namespace;)V
    .locals 0
    .parameter "namespace"

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 1011
    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 908
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 954
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 956
    .end local p1
    :goto_0
    return-void

    .line 910
    .restart local p1
    :pswitch_1
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 915
    .restart local p1
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 920
    .restart local p1
    :pswitch_3
    check-cast p1, Lorg/dom4j/Text;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Text;)V

    goto :goto_0

    .line 925
    .restart local p1
    :pswitch_4
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 930
    .restart local p1
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 935
    .restart local p1
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 940
    .restart local p1
    :pswitch_7
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 949
    .restart local p1
    :pswitch_8
    check-cast p1, Lorg/dom4j/Namespace;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Namespace;)V

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0
    .parameter "pi"

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 1015
    return-void
.end method

.method public add(Lorg/dom4j/Text;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    .line 1019
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 768
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz p2, :cond_3

    .line 769
    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 782
    :cond_0
    :goto_0
    return-object p0

    .line 771
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 774
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 776
    :cond_2
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_3
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_0
.end method

.method public addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "qName"
    .parameter "value"

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 789
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz p2, :cond_3

    .line 790
    if-nez v0, :cond_1

    .line 791
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 803
    :cond_0
    :goto_0
    return-object p0

    .line 792
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 795
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 797
    :cond_2
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_3
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_0
.end method

.method public addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "cdata"

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    .line 809
    .local v0, node:Lorg/dom4j/CDATA;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 811
    return-object p0
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "comment"

    .prologue
    .line 815
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    .line 817
    .local v0, node:Lorg/dom4j/Comment;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 819
    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 10
    .parameter "name"

    .prologue
    .line 823
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 825
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 827
    .local v1, index:I
    const-string v5, ""

    .line 829
    .local v5, prefix:Ljava/lang/String;
    move-object v2, p1

    .line 831
    .local v2, localName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 833
    .local v3, namespace:Lorg/dom4j/Namespace;
    if-lez v1, :cond_0

    .line 834
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 836
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual {p0, v5}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    .line 840
    if-nez v3, :cond_1

    .line 841
    new-instance v7, Lorg/dom4j/IllegalAddException;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "No such namespace prefix: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " is in scope on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 843
    const-string v9, " so cannot add element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-direct {v7, v8}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 846
    :cond_0
    const-string v7, ""

    invoke-virtual {p0, v7}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    .line 851
    :cond_1
    if-eqz v3, :cond_2

    .line 852
    invoke-virtual {v0, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v6

    .line 854
    .local v6, qname:Lorg/dom4j/QName;
    invoke-virtual {v0, v6}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 859
    .end local v6           #qname:Lorg/dom4j/QName;
    .local v4, node:Lorg/dom4j/Element;
    :goto_0
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 861
    return-object v4

    .line 856
    .end local v4           #node:Lorg/dom4j/Element;
    :cond_2
    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .restart local v4       #node:Lorg/dom4j/Element;
    goto :goto_0
.end method

.method public addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "name"
    .parameter "text"

    .prologue
    .line 865
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    .line 867
    .local v0, node:Lorg/dom4j/Entity;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 869
    return-object p0
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 873
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 875
    .local v0, node:Lorg/dom4j/Namespace;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 877
    return-object p0
.end method

.method protected addNewNode(ILorg/dom4j/Node;)V
    .locals 1
    .parameter "index"
    .parameter "node"

    .prologue
    .line 1552
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1554
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 1555
    return-void
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 1546
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 1549
    return-void
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .locals 3
    .parameter "index"
    .parameter "node"

    .prologue
    .line 1528
    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1530
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The Node already has an existing parent of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1531
    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1530
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1533
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p2, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 1536
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addNewNode(ILorg/dom4j/Node;)V

    .line 1537
    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 1516
    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1518
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The Node already has an existing parent of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1519
    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1518
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 1524
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 1525
    return-void
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "target"
    .parameter "data"

    .prologue
    .line 881
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 882
    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 884
    .local v0, node:Lorg/dom4j/ProcessingInstruction;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 886
    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Element;
    .locals 2
    .parameter "target"
    .parameter "data"

    .prologue
    .line 890
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 891
    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 893
    .local v0, node:Lorg/dom4j/ProcessingInstruction;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 895
    return-object p0
.end method

.method public addText(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "text"

    .prologue
    .line 899
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    .line 901
    .local v0, node:Lorg/dom4j/Text;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    .line 903
    return-object p0
.end method

.method public additionalNamespaces()Ljava/util/List;
    .locals 8

    .prologue
    .line 1441
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 1443
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 1445
    .local v6, size:I
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 1447
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1459
    return-object v1

    .line 1448
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1450
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_1

    .line 1451
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v4, v0

    .line 1453
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1454
    invoke-virtual {v1, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 1447
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "defaultNamespaceURI"

    .prologue
    .line 1463
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 1465
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 1467
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 1469
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1481
    return-object v1

    .line 1470
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1472
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_1

    .line 1473
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v4, v0

    .line 1475
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1476
    invoke-virtual {v1, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 1469
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public appendAttributes(Lorg/dom4j/Element;)V
    .locals 5
    .parameter "element"

    .prologue
    .line 1246
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1255
    return-void

    .line 1247
    :cond_0
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 1249
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->supportsParent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1250
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 1246
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_1
.end method

.method public asXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 168
    .local v1, out:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    new-instance v3, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v3}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v2, v1, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 170
    .local v2, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v2, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 171
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 173
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 174
    .end local v1           #out:Ljava/io/StringWriter;
    .end local v2           #writer:Lorg/dom4j/io/XMLWriter;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 175
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "IOException while generating textual representation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "index"

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Attribute;

    return-object p0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 5
    .parameter "name"

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    .line 458
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 460
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 468
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 461
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 463
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 464
    goto :goto_1

    .line 460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 5
    .parameter "qName"

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    .line 474
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 476
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 484
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 477
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 479
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 480
    goto :goto_1

    .line 476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public attributeCount()I
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract attributeList()Ljava/util/List;
.end method

.method protected abstract attributeList(I)Ljava/util/List;
.end method

.method public attributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 564
    .local v0, attrib:Lorg/dom4j/Attribute;
    if-nez v0, :cond_0

    .line 565
    const/4 v1, 0x0

    .line 567
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 2
    .parameter "qName"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 574
    .local v0, attrib:Lorg/dom4j/Attribute;
    if-nez v0, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 577
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public attributeValue(Lorg/dom4j/QName;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "qName"
    .parameter "defaultValue"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public attributes()Ljava/util/List;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 1574
    if-eqz p1, :cond_0

    .line 1575
    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 1577
    :cond_0
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 1580
    if-eqz p1, :cond_0

    .line 1581
    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    .line 1583
    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 1585
    :cond_0
    return-void
.end method

.method protected createAttributeList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createAttributeList(I)Ljava/util/List;
    .locals 1
    .parameter "size"

    .prologue
    .line 1641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public createCopy()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 1271
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1273
    .local v0, clone:Lorg/dom4j/Element;
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1275
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1277
    return-object v0
.end method

.method public createCopy(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1283
    .local v0, clone:Lorg/dom4j/Element;
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1285
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1287
    return-object v0
.end method

.method public createCopy(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qName"

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1293
    .local v0, clone:Lorg/dom4j/Element;
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    .line 1295
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    .line 1297
    return-object v0
.end method

.method protected createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 1508
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qName"

    .prologue
    .line 1512
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .parameter "result"

    .prologue
    .line 1645
    new-instance v0, Lorg/dom4j/tree/SingleIterator;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/SingleIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public declaredNamespaces()Ljava/util/List;
    .locals 6

    .prologue
    .line 1417
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 1425
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1427
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1429
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 1437
    return-object v0

    .line 1430
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1432
    .local v3, object:Ljava/lang/Object;
    instance-of v5, v3, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_1

    .line 1433
    invoke-virtual {v0, v3}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 1429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 7
    .parameter "name"

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 308
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 310
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 322
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 311
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_1

    .line 314
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 316
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 317
    goto :goto_1

    .line 310
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 7
    .parameter "qName"

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 330
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 342
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 331
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 333
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_1

    .line 334
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 336
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 337
    goto :goto_1

    .line 330
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public elementIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->elements()Ljava/util/List;

    move-result-object v0

    .line 418
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public elementIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .parameter "name"

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public elementIterator(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/Iterator;
    .locals 1
    .parameter "name"
    .parameter "ns"

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;
    .locals 2
    .parameter "qName"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    .line 430
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public elementText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1220
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1222
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public elementText(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 2
    .parameter "qName"

    .prologue
    .line 1226
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1228
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public elementTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1232
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1234
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public elementTextTrim(Lorg/dom4j/QName;)Ljava/lang/String;
    .locals 2
    .parameter "qName"

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 1240
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public elements()Ljava/util/List;
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 352
    .local v2, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 354
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 356
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 364
    return-object v0

    .line 357
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, object:Ljava/lang/Object;
    instance-of v5, v3, Lorg/dom4j/Element;

    if-eqz v5, :cond_1

    .line 360
    invoke-virtual {v0, v3}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 356
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "name"

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    .line 370
    .local v4, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 372
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 374
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 386
    return-object v1

    .line 375
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Element;

    if-eqz v7, :cond_1

    .line 378
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 380
    .local v2, element:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 374
    .end local v2           #element:Lorg/dom4j/Element;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public elements(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 412
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .locals 8
    .parameter "qName"

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    .line 392
    .local v4, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 394
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 396
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 408
    return-object v1

    .line 397
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 399
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Element;

    if-eqz v7, :cond_1

    .line 400
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 402
    .local v2, element:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 403
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 396
    .end local v2           #element:Lorg/dom4j/Element;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public ensureAttributesCapacity(I)V
    .locals 4
    .parameter "minCapacity"

    .prologue
    .line 1494
    const/4 v3, 0x1

    if-le p1, v3, :cond_0

    .line 1495
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    .line 1497
    .local v2, list:Ljava/util/List;
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1498
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 1500
    .local v1, arrayList:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1503
    .end local v1           #arrayList:Ljava/util/ArrayList;
    .end local v2           #list:Ljava/util/List;
    :cond_0
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 3

    .prologue
    .line 1607
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 1610
    .local v1, qName:Lorg/dom4j/QName;
    if-eqz v1, :cond_0

    .line 1611
    invoke-virtual {v1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 1613
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1618
    .end local v0           #factory:Lorg/dom4j/DocumentFactory;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 9
    .parameter "prefix"

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    const-string p1, ""

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1328
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v8

    .line 1363
    :goto_0
    return-object v8

    .line 1329
    :cond_1
    const-string v8, "xml"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1330
    sget-object v8, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 1332
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 1334
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 1336
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v7, :cond_3

    .line 1349
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    .line 1351
    .local v6, parent:Lorg/dom4j/Element;
    if-eqz v6, :cond_5

    .line 1352
    invoke-interface {v6, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 1354
    .local v1, answer:Lorg/dom4j/Namespace;
    if-eqz v1, :cond_5

    move-object v8, v1

    .line 1355
    goto :goto_0

    .line 1337
    .end local v1           #answer:Lorg/dom4j/Namespace;
    .end local v6           #parent:Lorg/dom4j/Element;
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1339
    .local v5, object:Ljava/lang/Object;
    instance-of v8, v5, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_4

    .line 1340
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v4, v0

    .line 1342
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v4

    .line 1343
    goto :goto_0

    .line 1336
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1359
    .end local v5           #object:Ljava/lang/Object;
    .restart local v6       #parent:Lorg/dom4j/Element;
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_7

    .line 1360
    :cond_6
    sget-object v8, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_0

    .line 1363
    :cond_7
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 7
    .parameter "uri"

    .prologue
    .line 1367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1368
    :cond_0
    sget-object v6, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 1388
    :goto_0
    return-object v6

    .line 1369
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1370
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v6

    goto :goto_0

    .line 1372
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1374
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1376
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 1388
    const/4 v6, 0x0

    goto :goto_0

    .line 1377
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1379
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_4

    .line 1380
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v3, v0

    .line 1382
    .local v3, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    .line 1383
    goto :goto_0

    .line 1376
    .end local v3           #namespace:Lorg/dom4j/Namespace;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesForURI(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "uri"

    .prologue
    .line 1393
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 1400
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 1402
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 1404
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 1413
    return-object v1

    .line 1405
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1407
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_1

    .line 1408
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1409
    invoke-virtual {v1, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 1404
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const-string v1, "."

    .line 128
    :goto_0
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 122
    .local v0, parent:Lorg/dom4j/Element;
    if-nez v0, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_1
    if-ne v0, p1, :cond_2

    .line 125
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 5
    .parameter "qualifiedName"

    .prologue
    .line 1301
    const-string v3, ""

    .line 1303
    .local v3, prefix:Ljava/lang/String;
    move-object v1, p1

    .line 1305
    .local v1, localName:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1307
    .local v0, index:I
    if-lez v0, :cond_0

    .line 1308
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1310
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1313
    :cond_0
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    .line 1315
    .local v2, namespace:Lorg/dom4j/Namespace;
    if-eqz v2, :cond_1

    .line 1316
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v4

    .line 1318
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1124
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 1126
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1128
    .local v4, size:I
    if-lez v4, :cond_3

    .line 1129
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1131
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1155
    :goto_0
    return-object v6

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1135
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 1151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1136
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1138
    .local v3, node:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1155
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    .end local v3           #node:Ljava/lang/Object;
    .end local v5           #string:Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    .line 134
    .local v3, parent:Lorg/dom4j/Element;
    if-nez v3, :cond_0

    .line 135
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    :goto_0
    return-object v4

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, buffer:Ljava/lang/StringBuffer;
    if-eq v3, p1, :cond_1

    .line 141
    invoke-interface {v3, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, mySiblings:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 151
    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 153
    .local v1, idx:I
    if-ltz v1, :cond_2

    .line 154
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    .end local v1           #idx:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getXPathNameStep()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    :goto_0
    return-object v2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 109
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "*[name()=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\']"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getXPathResult(I)Lorg/dom4j/Node;
    .locals 2
    .parameter "index"

    .prologue
    .line 755
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 757
    .local v0, answer:Lorg/dom4j/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    invoke-interface {v0, p0}, Lorg/dom4j/Node;->asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v1

    .line 761
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public hasMixedContent()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1052
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 1054
    .local v0, content:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    move v5, v7

    .line 1074
    :goto_0
    return v5

    .line 1058
    :cond_1
    const/4 v4, 0x0

    .line 1060
    .local v4, prevClass:Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    .line 1074
    goto :goto_0

    .line 1061
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1063
    .local v3, object:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1065
    .local v2, newClass:Ljava/lang/Class;
    if-eq v2, v4, :cond_2

    .line 1066
    if-eqz v4, :cond_4

    .line 1067
    const/4 v5, 0x1

    goto :goto_0

    .line 1070
    :cond_4
    move-object v4, v2

    goto :goto_1
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRootElement()Z
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 72
    .local v0, document:Lorg/dom4j/Document;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 75
    .local v1, root:Lorg/dom4j/Element;
    if-ne v1, p0, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 80
    .end local v1           #root:Lorg/dom4j/Element;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTextOnly()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1078
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 1080
    .local v0, content:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1093
    :goto_0
    return v3

    .line 1084
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 1093
    goto :goto_0

    .line 1085
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1087
    .local v2, object:Ljava/lang/Object;
    instance-of v3, v2, Lorg/dom4j/CharacterData;

    if-nez v3, :cond_2

    .line 1088
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1089
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 270
    if-ltz p1, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    move-object v2, v3

    .line 288
    .end local v0           #list:Ljava/util/List;
    :goto_0
    return-object v2

    .line 277
    .restart local v0       #list:Ljava/util/List;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 279
    .local v1, node:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 280
    instance-of v2, v1, Lorg/dom4j/Node;

    if-eqz v2, :cond_1

    .line 281
    check-cast v1, Lorg/dom4j/Node;

    .end local v1           #node:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 283
    .restart local v1       #node:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v2

    goto :goto_0

    .end local v0           #list:Ljava/util/List;
    .end local v1           #node:Ljava/lang/Object;
    :cond_2
    move-object v2, v3

    .line 288
    goto :goto_0
.end method

.method public nodeCount()I
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()V
    .locals 9

    .prologue
    .line 1176
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    .line 1178
    .local v1, content:Ljava/util/List;
    const/4 v5, 0x0

    .line 1180
    .local v5, previousText:Lorg/dom4j/Text;
    const/4 v3, 0x0

    .line 1182
    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 1217
    return-void

    .line 1183
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Node;

    .line 1185
    .local v4, node:Lorg/dom4j/Node;
    instance-of v8, v4, Lorg/dom4j/Text;

    if-eqz v8, :cond_4

    .line 1186
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Text;

    move-object v6, v0

    .line 1188
    .local v6, text:Lorg/dom4j/Text;
    if-eqz v5, :cond_1

    .line 1189
    invoke-interface {v6}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/dom4j/Text;->appendText(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, v6}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    goto :goto_0

    .line 1193
    :cond_1
    invoke-interface {v6}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v7

    .line 1197
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    .line 1198
    :cond_2
    invoke-virtual {p0, v6}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    goto :goto_0

    .line 1200
    :cond_3
    move-object v5, v6

    .line 1202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1206
    .end local v6           #text:Lorg/dom4j/Text;
    .end local v7           #value:Ljava/lang/String;
    :cond_4
    instance-of v8, v4, Lorg/dom4j/Element;

    if-eqz v8, :cond_5

    .line 1207
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 1209
    .local v2, element:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->normalize()V

    .line 1212
    .end local v2           #element:Lorg/dom4j/Element;
    :cond_5
    const/4 v5, 0x0

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 7
    .parameter "target"

    .prologue
    .line 713
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 715
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 717
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 729
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 718
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 720
    .local v3, object:Ljava/lang/Object;
    instance-of v6, v3, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_1

    .line 721
    move-object v0, v3

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    move-object v4, v0

    .line 723
    .local v4, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    .line 724
    goto :goto_1

    .line 717
    .end local v4           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 6

    .prologue
    .line 673
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 675
    .local v2, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 677
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 679
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 687
    return-object v0

    .line 680
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 682
    .local v3, object:Ljava/lang/Object;
    instance-of v5, v3, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_1

    .line 683
    invoke-virtual {v0, v3}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 679
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "target"

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v3

    .line 693
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    .line 695
    .local v1, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 697
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 709
    return-object v1

    .line 698
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 700
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v7, :cond_1

    .line 701
    move-object v0, v4

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    move-object v5, v0

    .line 703
    .local v5, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v5}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 704
    invoke-virtual {v1, v5}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 697
    .end local v5           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .locals 4
    .parameter "attribute"

    .prologue
    .line 650
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    .line 652
    .local v2, list:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 654
    .local v0, answer:Z
    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 667
    :cond_0
    :goto_0
    return v0

    .line 658
    :cond_1
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 660
    .local v1, copy:Lorg/dom4j/Attribute;
    if-eqz v1, :cond_0

    .line 661
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 663
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/dom4j/CDATA;)Z
    .locals 1
    .parameter "cdata"

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .locals 1
    .parameter "comment"

    .prologue
    .line 1026
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 1
    .parameter "element"

    .prologue
    .line 1030
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Entity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Namespace;)Z
    .locals 1
    .parameter "namespace"

    .prologue
    .line 1038
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 959
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 988
    :pswitch_0
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .line 961
    .restart local p1
    :pswitch_1
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_0

    .line 964
    .restart local p1
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    move-result v0

    goto :goto_0

    .line 967
    .restart local p1
    :pswitch_3
    check-cast p1, Lorg/dom4j/Text;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move-result v0

    goto :goto_0

    .line 970
    .restart local p1
    :pswitch_4
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/CDATA;)Z

    move-result v0

    goto :goto_0

    .line 973
    .restart local p1
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Entity;)Z

    move-result v0

    goto :goto_0

    .line 976
    .restart local p1
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_0

    .line 979
    .restart local p1
    :pswitch_7
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_0

    .line 985
    .restart local p1
    :pswitch_8
    check-cast p1, Lorg/dom4j/Namespace;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Namespace;)Z

    move-result v0

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 1042
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Text;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 1558
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1560
    .local v0, answer:Z
    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 1564
    :cond_0
    return v0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 6
    .parameter "target"

    .prologue
    .line 733
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    .line 735
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 749
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 736
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 738
    .local v3, object:Ljava/lang/Object;
    instance-of v5, v3, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_0

    .line 739
    move-object v0, v3

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    move-object v4, v0

    .line 741
    .local v4, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 742
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 744
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 606
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 607
    return-void
.end method

.method public setAttributeValue(Lorg/dom4j/QName;Ljava/lang/String;)V
    .locals 0
    .parameter "qName"
    .parameter "value"

    .prologue
    .line 622
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 623
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V
    .locals 12
    .parameter "attributes"
    .parameter "namespaceStack"
    .parameter "noNamespaceAttributes"

    .prologue
    .line 505
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v10

    .line 507
    .local v10, size:I
    if-lez v10, :cond_1

    .line 508
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v6

    .line 510
    .local v6, factory:Lorg/dom4j/DocumentFactory;
    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 512
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, name:Ljava/lang/String;
    if-nez p3, :cond_0

    const-string v11, "xmlns"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 515
    :cond_0
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, attributeURI:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, attributeLocalName:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, attributeValue:Ljava/lang/String;
    invoke-virtual {p2, v4, v1, v9}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 525
    .local v3, attributeQName:Lorg/dom4j/QName;
    invoke-virtual {v6, p0, v3, v5}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v11

    .line 524
    invoke-virtual {p0, v11}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    .line 559
    .end local v1           #attributeLocalName:Ljava/lang/String;
    .end local v3           #attributeQName:Lorg/dom4j/QName;
    .end local v4           #attributeURI:Ljava/lang/String;
    .end local v5           #attributeValue:Ljava/lang/String;
    .end local v6           #factory:Lorg/dom4j/DocumentFactory;
    .end local v9           #name:Ljava/lang/String;
    :cond_1
    return-void

    .line 528
    .restart local v6       #factory:Lorg/dom4j/DocumentFactory;
    :cond_2
    invoke-virtual {p0, v10}, Lorg/dom4j/tree/AbstractElement;->attributeList(I)Ljava/util/List;

    move-result-object v8

    .line 530
    .local v8, list:Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 532
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 535
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, attributeName:Ljava/lang/String;
    if-nez p3, :cond_3

    .line 538
    const-string v11, "xmlns"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 539
    :cond_3
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 541
    .restart local v4       #attributeURI:Ljava/lang/String;
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .restart local v1       #attributeLocalName:Ljava/lang/String;
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 546
    .restart local v5       #attributeValue:Ljava/lang/String;
    invoke-virtual {p2, v4, v1, v2}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 549
    .restart local v3       #attributeQName:Lorg/dom4j/QName;
    invoke-virtual {v6, p0, v3, v5}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 552
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    .line 532
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    .end local v1           #attributeLocalName:Ljava/lang/String;
    .end local v3           #attributeQName:Lorg/dom4j/QName;
    .end local v4           #attributeURI:Ljava/lang/String;
    .end local v5           #attributeValue:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 265
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    .line 85
    return-void
.end method

.method public setNamespace(Lorg/dom4j/Namespace;)V
    .locals 2
    .parameter "namespace"

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    .line 89
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 1098
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    .line 1100
    .local v0, allContent:Ljava/util/List;
    if-eqz v0, :cond_0

    .line 1101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1103
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1120
    .end local v1           #it:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 1121
    return-void

    .line 1104
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 1106
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1112
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " [Element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 222
    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 223
    const-string v2, "/>]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " [Element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 232
    const-string v2, " attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/>]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    new-instance v1, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v1}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 182
    .local v0, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v0, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 183
    return-void
.end method
