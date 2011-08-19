.class public Lorg/apache/xalan/templates/WhiteSpaceInfo;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "WhiteSpaceInfo.java"


# static fields
.field static final serialVersionUID:J = 0x58ab0710147f609cL


# instance fields
.field private m_shouldStripSpace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2
    .parameter "thisSheet"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V
    .registers 4
    .parameter "matchPattern"
    .parameter "shouldStripSpace"
    .parameter "thisSheet"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 72
    iput-boolean p2, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 76
    invoke-virtual {p0, p3}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getShouldStripSpace()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    .line 85
    return-void
.end method
