.class public Lorg/apache/xml/utils/XMLStringDefault;
.super Ljava/lang/Object;
.source "XMLStringDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# instance fields
.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .registers 4
    .parameter "anotherString"

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 4
    .parameter "str"

    .prologue
    .line 671
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .parameter "lh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 3
    .parameter "suffix"

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "anObject"

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .registers 3
    .parameter "obj2"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .registers 4
    .parameter "anObject"

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 3
    .parameter "anotherString"

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .registers 6
    .parameter "trimHead"
    .parameter "trimTail"
    .parameter "doublePunctuationSpaces"

    .prologue
    .line 90
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getChars(II[CI)V
    .registers 9
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 146
    move v0, p4

    .line 147
    .local v0, destIndex:I
    move v2, p1

    .local v2, i:I
    move v1, v0

    .end local v0           #destIndex:I
    .local v1, destIndex:I
    :goto_3
    if-ge v2, p2, :cond_13

    .line 149
    add-int/lit8 v0, v1, 0x1

    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    iget-object v3, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 147
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0           #destIndex:I
    .restart local v1       #destIndex:I
    goto :goto_3

    .line 151
    :cond_13
    return-void
.end method

.method public hasString()Z
    .registers 2

    .prologue
    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .registers 4
    .parameter "ch"
    .parameter "fromIndex"

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "str"

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "str"
    .parameter "fromIndex"

    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 534
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(I)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .registers 4
    .parameter "ch"
    .parameter "fromIndex"

    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "str"

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "str"
    .parameter "fromIndex"

    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 3
    .parameter "prefix"

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .registers 4
    .parameter "prefix"
    .parameter "toffset"

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .registers 4
    .parameter "prefix"

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .registers 5
    .parameter "prefix"
    .parameter "toffset"

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .registers 4
    .parameter "beginIndex"

    .prologue
    .line 635
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .registers 5
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 656
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .registers 4

    .prologue
    .line 811
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 815
    :goto_a
    return-wide v1

    .line 813
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 815
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8

    goto :goto_a
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    .line 700
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 4
    .parameter "locale"

    .prologue
    .line 685
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    .line 744
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 4
    .parameter "locale"

    .prologue
    .line 713
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    .line 778
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
