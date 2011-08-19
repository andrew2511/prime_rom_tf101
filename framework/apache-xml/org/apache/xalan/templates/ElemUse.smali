.class public Lorg/apache/xalan/templates/ElemUse;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemUse.java"


# static fields
.field static final serialVersionUID:J = 0x50e886227b73bd18L


# instance fields
.field private m_attributeSetsNames:[Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-void
.end method

.method private applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V
    .registers 15
    .parameter "transformer"
    .parameter "stylesheet"
    .parameter "attributeSetsNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 145
    if-eqz p3, :cond_37

    .line 147
    array-length v4, p3

    .line 149
    .local v4, nNames:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v4, :cond_37

    .line 151
    aget-object v6, p3, v2

    .line 152
    .local v6, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {p2, v6}, Lorg/apache/xalan/templates/StylesheetRoot;->getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, attrSets:Ljava/util/List;
    if-eqz v1, :cond_23

    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 160
    .local v5, nSets:I
    sub-int v3, v5, v9

    .local v3, k:I
    :goto_15
    if-ltz v3, :cond_34

    .line 162
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    .line 165
    .local v0, attrSet:Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 160
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 170
    .end local v0           #attrSet:Lorg/apache/xalan/templates/ElemAttributeSet;
    .end local v3           #k:I
    .end local v5           #nSets:I
    :cond_23
    new-instance v7, Ljavax/xml/transform/TransformerException;

    const-string v8, "ER_NO_ATTRIB_SET"

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v7

    .line 149
    .restart local v3       #k:I
    .restart local v5       #nSets:I
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 176
    .end local v1           #attrSets:Ljava/util/List;
    .end local v2           #i:I
    .end local v3           #k:I
    .end local v4           #nNames:I
    .end local v5           #nSets:I
    .end local v6           #qname:Lorg/apache/xml/utils/QName;
    :cond_37
    return-void
.end method


# virtual methods
.method public applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .parameter "transformer"
    .parameter "stylesheet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    .line 125
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_d

    .line 200
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemUse;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    .line 204
    :cond_d
    return-void
.end method

.method public getUseAttributeSets()[Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public setUseAttributeSets(Ljava/util/Vector;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 66
    .local v1, n:I
    new-array v2, v1, [Lorg/apache/xml/utils/QName;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_18

    .line 70
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    aput-object v2, v3, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 72
    :cond_18
    return-void
.end method

.method public setUseAttributeSets([Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    .line 88
    return-void
.end method
