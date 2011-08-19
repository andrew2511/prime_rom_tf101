.class public Lorg/apache/xalan/processor/WhitespaceInfoPaths;
.super Lorg/apache/xalan/templates/WhiteSpaceInfo;
.source "WhitespaceInfoPaths.java"


# static fields
.field static final serialVersionUID:J = 0x52a394c820bc6ab3L


# instance fields
.field private m_elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2
    .parameter "thisSheet"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 78
    return-void
.end method


# virtual methods
.method public clearElements()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    .line 67
    return-void
.end method

.method getElements()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-object v0
.end method

.method public setElements(Ljava/util/Vector;)V
    .registers 2
    .parameter "elems"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    .line 49
    return-void
.end method
