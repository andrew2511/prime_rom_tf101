.class public Lorg/dom4j/io/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final STANDARD_INDENT:Ljava/lang/String; = "  "


# instance fields
.field private attributeQuoteChar:C

.field private doXHTML:Z

.field private encoding:Ljava/lang/String;

.field private expandEmptyElements:Z

.field private indent:Ljava/lang/String;

.field private lineSeparator:Ljava/lang/String;

.field private newLineAfterDeclaration:Z

.field private newLineAfterNTags:I

.field private newlines:Z

.field private omitEncoding:Z

.field private padText:Z

.field private suppressDeclaration:Z

.field private trimText:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 60
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 66
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 75
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 78
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "indent"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 60
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 66
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 75
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 78
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 97
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "indent"
    .parameter "newlines"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 60
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 66
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 75
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 78
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 112
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "indent"
    .parameter "newlines"
    .parameter "encoding"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 60
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 66
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 75
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 78
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 129
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 130
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 131
    iput-object p3, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static createCompactFormat()Lorg/dom4j/io/OutputFormat;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 548
    .local v0, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Z)V

    .line 549
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 550
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 552
    return-object v0
.end method

.method public static createPrettyPrint()Lorg/dom4j/io/OutputFormat;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 530
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 531
    .local v0, format:Lorg/dom4j/io/OutputFormat;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 532
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 533
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 534
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    .line 536
    return-object v0
.end method


# virtual methods
.method public getAttributeQuoteCharacter()C
    .locals 1

    .prologue
    .line 455
    iget-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getNewLineAfterNTags()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return v0
.end method

.method public isExpandEmptyElements()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return v0
.end method

.method public isNewLineAfterDeclaration()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return v0
.end method

.method public isNewlines()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return v0
.end method

.method public isOmitEncoding()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return v0
.end method

.method public isPadText()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return v0
.end method

.method public isSuppressDeclaration()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return v0
.end method

.method public isTrimText()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return v0
.end method

.method public isXHTML()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return v0
.end method

.method public parseOptions([Ljava/lang/String;I)I
    .locals 4
    .parameter "args"
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 491
    array-length v0, p1

    .local v0, size:I
    :goto_0
    if-lt p2, v0, :cond_1

    .line 519
    :cond_0
    return p2

    .line 492
    :cond_1
    aget-object v1, p1, p2

    const-string v2, "-suppressDeclaration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 491
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 494
    :cond_2
    aget-object v1, p1, p2

    const-string v2, "-omitEncoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    goto :goto_1

    .line 496
    :cond_3
    aget-object v1, p1, p2

    const-string v2, "-indent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 497
    add-int/lit8 p2, p2, 0x1

    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :cond_4
    aget-object v1, p1, p2

    const-string v2, "-indentSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    add-int/lit8 p2, p2, 0x1

    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    goto :goto_1

    .line 500
    :cond_5
    aget-object v1, p1, p2

    const-string v2, "-expandEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 501
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    goto :goto_1

    .line 502
    :cond_6
    aget-object v1, p1, p2

    const-string v2, "-encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 503
    add-int/lit8 p2, p2, 0x1

    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_7
    aget-object v1, p1, p2

    const-string v2, "-newlines"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 505
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    goto :goto_1

    .line 506
    :cond_8
    aget-object v1, p1, p2

    const-string v2, "-lineSeparator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 507
    add-int/lit8 p2, p2, 0x1

    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_9
    aget-object v1, p1, p2

    const-string v2, "-trimText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 509
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    goto/16 :goto_1

    .line 510
    :cond_a
    aget-object v1, p1, p2

    const-string v2, "-padText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 511
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    goto/16 :goto_1

    .line 512
    :cond_b
    aget-object v1, p1, p2

    const-string v2, "-xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0, v3}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    goto/16 :goto_1
.end method

.method public setAttributeQuoteCharacter(C)V
    .locals 3
    .parameter "quoteChar"

    .prologue
    .line 471
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 472
    :cond_0
    iput-char p1, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 477
    return-void

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid attribute quote character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 186
    :cond_0
    return-void
.end method

.method public setExpandEmptyElements(Z)V
    .locals 0
    .parameter "expandEmptyElements"

    .prologue
    .line 274
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 275
    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 353
    const/4 p1, 0x0

    .line 356
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setIndent(Z)V
    .locals 1
    .parameter "doIndent"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    const-string v0, "  "

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIndentSize(I)V
    .locals 3
    .parameter "indentSize"

    .prologue
    .line 385
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v1, indentBuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 392
    return-void

    .line 388
    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0
    .parameter "separator"

    .prologue
    .line 152
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setNewLineAfterDeclaration(Z)V
    .locals 0
    .parameter "newLineAfterDeclaration"

    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 247
    return-void
.end method

.method public setNewLineAfterNTags(I)V
    .locals 0
    .parameter "tagCount"

    .prologue
    .line 451
    iput p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 452
    return-void
.end method

.method public setNewlines(Z)V
    .locals 0
    .parameter "newlines"

    .prologue
    .line 169
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 170
    return-void
.end method

.method public setOmitEncoding(Z)V
    .locals 0
    .parameter "omitEncoding"

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 206
    return-void
.end method

.method public setPadText(Z)V
    .locals 0
    .parameter "padText"

    .prologue
    .line 332
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 333
    return-void
.end method

.method public setSuppressDeclaration(Z)V
    .locals 0
    .parameter "suppressDeclaration"

    .prologue
    .line 221
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 222
    return-void
.end method

.method public setTrimText(Z)V
    .locals 0
    .parameter "trimText"

    .prologue
    .line 300
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 301
    return-void
.end method

.method public setXHTML(Z)V
    .locals 0
    .parameter "xhtml"

    .prologue
    .line 431
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 432
    return-void
.end method
