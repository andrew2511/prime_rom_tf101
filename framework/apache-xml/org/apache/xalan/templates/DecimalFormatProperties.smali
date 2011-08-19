.class public Lorg/apache/xalan/templates/DecimalFormatProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "DecimalFormatProperties.java"


# static fields
.field static final serialVersionUID:J = -0x5b07b40a72bfea86L


# instance fields
.field m_dfs:Ljava/text/DecimalFormatSymbols;

.field private m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "docOrderNumber"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    .line 63
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    .line 66
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_docOrderNumber:I

    .line 70
    return-void
.end method


# virtual methods
.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    return v0
.end method

.method public getDigit()C
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v0

    return v0
.end method

.method public getGroupingSeparator()C
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinusSign()C
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v0

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    if-nez v0, :cond_c

    .line 126
    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    .line 128
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    goto :goto_b
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    const-string v0, "decimal-format"

    return-object v0
.end method

.method public getPatternSeparator()C
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v0

    return v0
.end method

.method public getPerMille()C
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v0

    return v0
.end method

.method public getPercent()C
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v0

    return v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 317
    const/16 v0, 0x53

    return v0
.end method

.method public getZeroDigit()C
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 401
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    .line 402
    return-void
.end method

.method public setDecimalSeparator(C)V
    .registers 3
    .parameter "ds"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 141
    return-void
.end method

.method public setDigit(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 354
    return-void
.end method

.method public setGroupingSeparator(C)V
    .registers 3
    .parameter "gs"

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 165
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .registers 3
    .parameter "inf"

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setMinusSign(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 213
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "qname"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    .line 113
    return-void
.end method

.method public setPatternSeparator(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 379
    return-void
.end method

.method public setPerMille(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 295
    return-void
.end method

.method public setPercent(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 271
    return-void
.end method

.method public setZeroDigit(C)V
    .registers 3
    .parameter "v"

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 330
    return-void
.end method
