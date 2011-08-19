.class public Lorg/apache/xml/dtm/ref/DTMStringPool;
.super Ljava/lang/Object;
.source "DTMStringPool.java"


# static fields
.field static final HASHPRIME:I = 0x65

.field public static final NULL:I = -0x1


# instance fields
.field m_hashChain:Lorg/apache/xml/utils/IntVector;

.field m_hashStart:[I

.field m_intToString:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "chainSize"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x65

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    .line 74
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    .line 143
    const/16 v6, 0x28

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Zero"

    aput-object v7, v5, v6

    const-string v6, "One"

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string v7, "Two"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "Three"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Four"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Five"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "Six"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Nine"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "Ten"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "Eleven"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "Twelve"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "Thirteen"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "Fourteen"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "Fifteen"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "Sixteen"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "Seventeen"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "Eighteen"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "Nineteen"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "Twenty"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "Twenty-One"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "Twenty-Two"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "Twenty-Three"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "Twenty-Four"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "Twenty-Five"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "Twenty-Six"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "Twenty-Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "Twenty-Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "Twenty-Nine"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "Thirty"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "Thirty-One"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "Thirty-Two"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "Thirty-Three"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "Thirty-Four"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "Thirty-Five"

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "Thirty-Six"

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "Thirty-Seven"

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "Thirty-Eight"

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "Thirty-Nine"

    aput-object v7, v5, v6

    .line 154
    .local v5, word:[Ljava/lang/String;
    new-instance v3, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    .line 156
    .local v3, pool:Lorg/apache/xml/dtm/ref/DTMStringPool;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "If no complaints are printed below, we passed initial test."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x0

    .local v2, pass:I
    :goto_f9
    if-gt v2, v9, :cond_1b7

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_fc
    array-length v6, v5

    if-ge v0, v6, :cond_12c

    .line 164
    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, j:I
    if-eq v1, v0, :cond_129

    .line 166
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch populating pool: assigned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    :cond_129
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 170
    .end local v1           #j:I
    :cond_12c
    const/4 v0, 0x0

    :goto_12d
    array-length v6, v5

    if-ge v0, v6, :cond_15d

    .line 172
    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 173
    .restart local v1       #j:I
    if-eq v1, v0, :cond_15a

    .line 174
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch in stringToIndex: returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_15a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    .line 178
    .end local v1           #j:I
    :cond_15d
    const/4 v0, 0x0

    :goto_15e
    array-length v6, v5

    if-ge v0, v6, :cond_192

    .line 180
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, w:Ljava/lang/String;
    aget-object v6, v5, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18f

    .line 182
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch in indexToString: returned"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    :cond_18f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15e

    .line 186
    .end local v4           #w:Ljava/lang/String;
    :cond_192
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    .line 188
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nPass "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " complete\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f9

    .line 190
    .end local v0           #i:I
    :cond_1b7
    return-void
.end method


# virtual methods
.method public indexToString(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    .line 101
    .end local p0
    :goto_4
    return-object v0

    .restart local p0
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_4
.end method

.method public removeAllElements()V
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    const/16 v1, 0x65

    if-ge v0, v1, :cond_12

    .line 89
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 90
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    .line 91
    return-void
.end method

.method public stringToIndex(Ljava/lang/String;)I
    .registers 8
    .parameter "s"

    .prologue
    const/4 v5, -0x1

    .line 107
    if-nez p1, :cond_5

    move v4, v5

    .line 134
    :goto_4
    return v4

    .line 109
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    rem-int/lit8 v2, v4, 0x65

    .line 110
    .local v2, hashslot:I
    if-gez v2, :cond_e

    neg-int v2, v2

    .line 113
    :cond_e
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aget v1, v4, v2

    .line 114
    .local v1, hashlast:I
    move v0, v1

    .line 115
    .local v0, hashcandidate:I
    :goto_13
    if-eq v0, v5, :cond_2b

    .line 117
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v4, v0

    .line 118
    goto :goto_4

    .line 120
    :cond_23
    move v1, v0

    .line 121
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v4, v0}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v0

    goto :goto_13

    .line 125
    :cond_2b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 126
    .local v3, newIndex:I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 129
    if-ne v1, v5, :cond_43

    .line 130
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aput v3, v4, v2

    :goto_41
    move v4, v3

    .line 134
    goto :goto_4

    .line 132
    :cond_43
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v4, v3, v1}, Lorg/apache/xml/utils/IntVector;->setElementAt(II)V

    goto :goto_41
.end method
