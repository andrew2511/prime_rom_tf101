.class public Lorg/dom4j/bean/BeanDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "BeanDocumentFactory.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/bean/BeanDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/dom4j/bean/BeanDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/bean/BeanDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .parameter "owner"
    .parameter "qname"
    .parameter "value"

    .prologue
    .line 68
    new-instance v0, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createBean(Lorg/dom4j/QName;)Ljava/lang/Object;
    .locals 1
    .parameter "qname"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 5
    .parameter "qname"
    .parameter "attributes"

    .prologue
    .line 77
    const-string v3, "class"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 81
    const/4 v3, 0x1

    .line 82
    :try_start_0
    sget-object v4, Lorg/dom4j/bean/BeanDocumentFactory;->class$0:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    const-string v4, "org.dom4j.bean.BeanDocumentFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    sput-object v4, Lorg/dom4j/bean/BeanDocumentFactory;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 81
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, beanClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 90
    .end local v0           #beanClass:Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/dom4j/bean/BeanDocumentFactory;->handleException(Ljava/lang/Exception;)V

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2
    .parameter "qname"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, bean:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 51
    new-instance v1, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v1, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    .line 53
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createElement(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Lorg/dom4j/Element;
    .locals 2
    .parameter "qname"
    .parameter "attributes"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, bean:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v1, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    .line 63
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#### Warning: couldn\'t create bean: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    return-void
.end method
