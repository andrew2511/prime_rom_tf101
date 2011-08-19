.class public Lorg/apache/xalan/processor/ProcessorExsltFuncResult;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = 0x598760557a657ab7L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v1, ""

    .line 51
    .local v1, msg:Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 52
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 53
    .local v0, ancestor:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_d
    if-eqz v0, :cond_2e

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez v2, :cond_2e

    .line 55
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemVariable;

    if-nez v2, :cond_1f

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemParam;

    if-nez v2, :cond_1f

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz v2, :cond_29

    .line 59
    :cond_1f
    const-string v1, "func:result cannot appear within a variable, parameter, or another func:result."

    .line 60
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    :cond_29
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_d

    .line 64
    :cond_2e
    if-nez v0, :cond_3a

    .line 66
    const-string v1, "func:result must appear in a func:function element"

    .line 67
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    :cond_3a
    return-void
.end method
