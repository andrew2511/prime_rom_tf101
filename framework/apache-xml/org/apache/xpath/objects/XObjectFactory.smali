.class public Lorg/apache/xpath/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "XObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "val"

    .prologue
    .line 48
    instance-of v2, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v2, :cond_9

    .line 50
    move-object v0, p0

    check-cast v0, Lorg/apache/xpath/objects/XObject;

    move-object v1, v0

    .line 69
    .end local p0
    .local v1, result:Lorg/apache/xpath/objects/XObject;
    :goto_8
    return-object v1

    .line 52
    .end local v1           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_9
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 54
    new-instance v1, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .restart local v1       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 56
    .end local v1           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_15
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    .line 58
    new-instance v1, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    .restart local v1       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 60
    .end local v1           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_21
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_2d

    .line 62
    new-instance v1, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    .restart local v1       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 66
    .end local v1           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_2d
    new-instance v1, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v1, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .restart local v1       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .parameter "val"
    .parameter "xctxt"

    .prologue
    .line 87
    instance-of v7, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v7, :cond_9

    .line 89
    move-object v0, p0

    check-cast v0, Lorg/apache/xpath/objects/XObject;

    move-object v6, v0

    .line 159
    .end local p0
    .local v6, result:Lorg/apache/xpath/objects/XObject;
    :goto_8
    return-object v6

    .line 91
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_9
    instance-of v7, p0, Ljava/lang/String;

    if-eqz v7, :cond_15

    .line 93
    new-instance v6, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-direct {v6, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 95
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_15
    instance-of v7, p0, Ljava/lang/Boolean;

    if-eqz v7, :cond_21

    .line 97
    new-instance v6, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-direct {v6, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 99
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_21
    instance-of v7, p0, Ljava/lang/Number;

    if-eqz v7, :cond_2d

    .line 101
    new-instance v6, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-direct {v6, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 103
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_2d
    instance-of v7, p0, Lorg/apache/xml/dtm/DTM;

    if-eqz v7, :cond_5a

    .line 105
    move-object v0, p0

    check-cast v0, Lorg/apache/xml/dtm/DTM;

    move-object v1, v0

    .line 108
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    :try_start_35
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v2

    .line 109
    .local v2, dtmRoot:I
    const/16 v7, 0xd

    invoke-interface {v1, v7}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v4

    .line 110
    .local v4, iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-interface {v4, v2}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 111
    new-instance v5, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v7, 0xd

    invoke-direct {v5, v4, v7}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 112
    .local v5, iterator:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v5, v2, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 113
    new-instance v6, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v6, v5}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_51} :catch_52

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 115
    .end local v2           #dtmRoot:I
    .end local v4           #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    .end local v5           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    :catch_52
    move-exception v7

    move-object v3, v7

    .line 117
    .local v3, ex:Ljava/lang/Exception;
    new-instance v7, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v7, v3}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 120
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_5a
    instance-of v7, p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v7, :cond_7e

    .line 122
    move-object v0, p0

    check-cast v0, Lorg/apache/xml/dtm/DTMAxisIterator;

    move-object v4, v0

    .line 125
    .restart local v4       #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    :try_start_62
    new-instance v5, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v7, 0xd

    invoke-direct {v5, v4, v7}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 126
    .restart local v5       #iterator:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMAxisIterator;->getStartNode()I

    move-result v7

    invoke-interface {v5, v7, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 127
    new-instance v6, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v6, v5}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_75} :catch_76

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_8

    .line 129
    .end local v5           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    :catch_76
    move-exception v7

    move-object v3, v7

    .line 131
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v7, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v7, v3}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 134
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    :cond_7e
    instance-of v7, p0, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v7, :cond_8b

    .line 136
    new-instance v6, Lorg/apache/xpath/objects/XNodeSet;

    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    .end local p0
    invoke-direct {v6, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_8

    .line 140
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_8b
    instance-of v7, p0, Lorg/w3c/dom/Node;

    if-eqz v7, :cond_98

    .line 142
    new-instance v6, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/Node;

    .end local p0
    invoke-direct {v6, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_8

    .line 146
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_98
    instance-of v7, p0, Lorg/w3c/dom/NodeList;

    if-eqz v7, :cond_a5

    .line 148
    new-instance v6, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/NodeList;

    .end local p0
    invoke-direct {v6, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_8

    .line 150
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_a5
    instance-of v7, p0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v7, :cond_b2

    .line 152
    new-instance v6, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    .end local p0
    invoke-direct {v6, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_8

    .line 156
    .end local v6           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_b2
    new-instance v6, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v6, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .restart local v6       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_8
.end method
