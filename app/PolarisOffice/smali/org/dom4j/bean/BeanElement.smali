.class public Lorg/dom4j/bean/BeanElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "BeanElement.java"


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field static class$0:Ljava/lang/Class;


# instance fields
.field private bean:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lorg/dom4j/bean/BeanDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 32
    sput-object v0, Lorg/dom4j/bean/BeanElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "bean"

    .prologue
    .line 39
    sget-object v0, Lorg/dom4j/bean/BeanElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "namespace"
    .parameter "bean"

    .prologue
    .line 43
    sget-object v0, Lorg/dom4j/bean/BeanElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0
    .parameter "qname"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;Ljava/lang/Object;)V
    .locals 0
    .parameter "qname"
    .parameter "bean"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 48
    iput-object p2, p0, Lorg/dom4j/bean/BeanElement;->bean:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 84
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-object p0
.end method

.method public addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qName"
    .parameter "value"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 94
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-object p0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/dom4j/bean/BeanElement;->getBeanAttributeList()Lorg/dom4j/bean/BeanAttributeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "qname"

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/dom4j/bean/BeanElement;->getBeanAttributeList()Lorg/dom4j/bean/BeanAttributeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method protected createAttributeList()Ljava/util/List;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lorg/dom4j/bean/BeanAttributeList;

    invoke-direct {v0, p0}, Lorg/dom4j/bean/BeanAttributeList;-><init>(Lorg/dom4j/bean/BeanElement;)V

    return-object v0
.end method

.method protected createAttributeList(I)Ljava/util/List;
    .locals 1
    .parameter "size"

    .prologue
    .line 155
    new-instance v0, Lorg/dom4j/bean/BeanAttributeList;

    invoke-direct {v0, p0}, Lorg/dom4j/bean/BeanAttributeList;-><init>(Lorg/dom4j/bean/BeanElement;)V

    return-object v0
.end method

.method protected getBeanAttributeList()Lorg/dom4j/bean/BeanAttributeList;
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/dom4j/bean/BeanElement;->attributeList()Ljava/util/List;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/bean/BeanAttributeList;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/dom4j/bean/BeanElement;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/dom4j/bean/BeanElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V
    .locals 7
    .parameter "attributes"
    .parameter "namespaceStack"
    .parameter "noNamespaceAttributes"

    .prologue
    .line 108
    const-string v5, "class"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, className:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 112
    const/4 v5, 0x1

    .line 113
    :try_start_0
    sget-object v6, Lorg/dom4j/bean/BeanElement;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_0

    :try_start_1
    const-string v6, "org.dom4j.bean.BeanElement"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :try_start_2
    sput-object v6, Lorg/dom4j/bean/BeanElement;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 112
    invoke-static {v2, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 114
    .local v1, beanClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/bean/BeanElement;->setData(Ljava/lang/Object;)V

    .line 116
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 132
    .end local v1           #beanClass:Ljava/lang/Class;
    .end local v4           #i:I
    .end local p0
    :goto_1
    return-void

    .line 113
    .restart local p0
    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 125
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/dom4j/bean/BeanElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/bean/BeanDocumentFactory;

    .line 126
    invoke-virtual {p0, v3}, Lorg/dom4j/bean/BeanDocumentFactory;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 117
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #beanClass:Ljava/lang/Class;
    .restart local v4       #i:I
    .restart local p0
    :cond_1
    :try_start_3
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, attributeName:Ljava/lang/String;
    const-string v5, "class"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lorg/dom4j/bean/BeanElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v0           #attributeName:Ljava/lang/String;
    .end local v1           #beanClass:Ljava/lang/Class;
    .end local v4           #i:I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultElement;->setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V

    goto :goto_1
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/dom4j/bean/BeanElement;->bean:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanElement;->setAttributeList(Ljava/util/List;)V

    .line 71
    return-void
.end method
