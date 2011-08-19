.class public final Lorg/apache/xml/serializer/AttributesImplSerializer;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "AttributesImplSerializer.java"


# static fields
.field private static final MAX:I = 0xc

.field private static final MAXMinus1:I = 0xb


# instance fields
.field private final m_buff:Ljava/lang/StringBuffer;

.field private final m_indexFromQName:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method private switchOverToHash(I)V
    .registers 10
    .parameter "numAtts"

    .prologue
    .line 149
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, p1, :cond_42

    .line 151
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, qName:Ljava/lang/String;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 153
    .local v0, i:Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, uri:Ljava/lang/String;
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, local:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 159
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v0           #i:Ljava/lang/Integer;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #local:Ljava/lang/String;
    .end local v4           #qName:Ljava/lang/String;
    .end local v5           #uri:Ljava/lang/String;
    :cond_42
    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "local"
    .parameter "qname"
    .parameter "type"
    .parameter "val"

    .prologue
    const/16 v3, 0xb

    .line 110
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v1

    .line 111
    .local v1, index:I
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-ge v1, v3, :cond_c

    .line 136
    :goto_b
    return-void

    .line 119
    :cond_c
    if-ne v1, v3, :cond_14

    .line 121
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    goto :goto_b

    .line 127
    :cond_14
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 128
    .local v0, i:Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 132
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public final clear()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    .line 174
    .local v0, len:I
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 175
    const/16 v1, 0xc

    if-gt v1, v0, :cond_10

    .line 179
    iget-object v1, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 182
    :cond_10
    return-void
.end method

.method public final getIndex(Ljava/lang/String;)I
    .registers 7
    .parameter "qname"

    .prologue
    .line 75
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_e

    .line 79
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    move v2, v1

    .line 89
    .end local v1           #index:I
    .local v2, index:I
    :goto_d
    return v2

    .line 84
    .end local v2           #index:I
    :cond_e
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_1b

    .line 86
    const/4 v1, -0x1

    .restart local v1       #index:I
    :goto_19
    move v2, v1

    .line 89
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_d

    .line 88
    .end local v2           #index:I
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #index:I
    goto :goto_19
.end method

.method public final getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 217
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_e

    .line 221
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    move v2, v1

    .line 235
    .end local v1           #index:I
    .local v2, index:I
    :goto_d
    return v2

    .line 227
    .end local v2           #index:I
    :cond_e
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 228
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_3c

    .line 232
    const/4 v1, -0x1

    .restart local v1       #index:I
    :goto_3a
    move v2, v1

    .line 235
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_d

    .line 234
    .end local v2           #index:I
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #index:I
    goto :goto_3a
.end method

.method public final setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "atts"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 200
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 201
    .local v0, numAtts:I
    const/16 v1, 0xc

    if-gt v1, v0, :cond_e

    .line 202
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    .line 204
    :cond_e
    return-void
.end method
