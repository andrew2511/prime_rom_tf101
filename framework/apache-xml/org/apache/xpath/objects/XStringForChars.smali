.class public Lorg/apache/xpath/objects/XStringForChars;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForChars.java"


# static fields
.field static final serialVersionUID:J = -0x1f0533052362cf23L


# instance fields
.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_XSTRINGFORCHARS_CANNOT_TAKE_STRING"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([CII)V
    .registers 7
    .parameter "val"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 52
    iput p2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    .line 53
    iput p3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    .line 54
    if-nez p1, :cond_18

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_18
    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 5
    .parameter "fsb"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 90
    return-void
.end method

.method public charAt(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 5
    .parameter "lh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 159
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 144
    return-void
.end method

.method public fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_FSB_NOT_SUPPORTED_XSTRINGFORCHARS"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChars(II[CI)V
    .registers 7
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-void
.end method

.method public hasString()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public length()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    return v0
.end method

.method public object()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForChars;->str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public str()Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 112
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget v3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 114
    :cond_15
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    return-object v0
.end method
