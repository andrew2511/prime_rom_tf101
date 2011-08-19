.class public Lorg/apache/xpath/functions/FuncTranslate;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncTranslate.java"


# static fields
.field static final serialVersionUID:J = -0x173719f81d54e982L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 13
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, theFirstString:Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, theSecondString:Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, theThirdString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 50
    .local v4, theFirstStringLength:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 54
    .local v8, theThirdStringLength:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v1, sbuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    if-ge v0, v4, :cond_48

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 59
    .local v2, theCurrentChar:C
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 61
    .local v5, theIndex:I
    if-gez v5, :cond_3e

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 68
    :cond_3e
    if-ge v5, v8, :cond_3b

    .line 73
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 86
    .end local v2           #theCurrentChar:C
    .end local v5           #theIndex:I
    :cond_48
    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v9
.end method
