.class public Lorg/apache/xalan/templates/XSLTVisitor;
.super Lorg/apache/xpath/XPathVisitor;
.source "XSLTVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAVT(Lorg/apache/xalan/templates/AVT;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public visitVariableOrParamDecl(Lorg/apache/xalan/templates/ElemVariable;)Z
    .registers 3
    .parameter "elem"

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
