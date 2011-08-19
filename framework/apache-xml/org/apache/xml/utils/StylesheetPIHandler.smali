.class public Lorg/apache/xml/utils/StylesheetPIHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetPIHandler.java"


# instance fields
.field m_baseID:Ljava/lang/String;

.field m_charset:Ljava/lang/String;

.field m_media:Ljava/lang/String;

.field m_stylesheets:Ljava/util/Vector;

.field m_title:Ljava/lang/String;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "baseID"
    .parameter "media"
    .parameter "title"
    .parameter "charset"

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    .line 103
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet()Ljavax/xml/transform/Source;
    .registers 5

    .prologue
    .line 118
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 120
    .local v1, sz:I
    if-lez v1, :cond_15

    .line 122
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    .local v0, source:Ljavax/xml/transform/Source;
    move-object v2, v0

    .line 126
    .end local v0           #source:Ljavax/xml/transform/Source;
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getBaseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-object v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v16, "xml-stylesheet"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_306

    .line 146
    const/4 v6, 0x0

    .line 147
    .local v6, href:Ljava/lang/String;
    const/4 v15, 0x0

    .line 148
    .local v15, type:Ljava/lang/String;
    const/4 v12, 0x0

    .line 149
    .local v12, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 150
    .local v8, media:Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .local v5, charset:Ljava/lang/String;
    const/4 v4, 0x0

    .line 152
    .local v4, alternate:Z
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v16, " \t=\n"

    const/16 v17, 0x1

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    .local v14, tokenizer:Ljava/util/StringTokenizer;
    const/4 v7, 0x0

    .line 154
    .local v7, lookedAhead:Z
    const/4 v10, 0x0

    .line 156
    .local v10, source:Ljavax/xml/transform/Source;
    const-string v13, ""

    .line 157
    .local v13, token:Ljava/lang/String;
    :cond_26
    :goto_26
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_2d1

    .line 159
    if-nez v7, :cond_95

    .line 160
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 163
    :goto_32
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_59

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_26

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_26

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_26

    .line 167
    :cond_59
    move-object v9, v13

    .line 168
    .local v9, name:Ljava/lang/String;
    const-string v16, "type"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ac

    .line 170
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 171
    :goto_69
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_97

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_90

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_90

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_97

    .line 173
    :cond_90
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_69

    .line 162
    .end local v9           #name:Ljava/lang/String;
    :cond_95
    const/4 v7, 0x0

    goto :goto_32

    .line 174
    .restart local v9       #name:Ljava/lang/String;
    :cond_97
    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_26

    .line 177
    :cond_ac
    const-string v16, "href"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18b

    .line 179
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 180
    :goto_bb
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_e7

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e2

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e2

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e7

    .line 182
    :cond_e2
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_bb

    .line 183
    :cond_e7
    move-object v6, v13

    .line 184
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 186
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 195
    :goto_f2
    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 197
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 200
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 201
    const/4 v7, 0x1

    goto :goto_f2

    .line 209
    :cond_12e
    const/16 v16, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 213
    :try_start_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    if-eqz v16, :cond_160

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v10

    goto/16 :goto_26

    .line 219
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    new-instance v10, Ljavax/xml/transform/sax/SAXSource;

    .end local v10           #source:Ljavax/xml/transform/Source;
    new-instance v16, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_17d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_141 .. :try_end_17d} :catch_17f

    .restart local v10       #source:Ljavax/xml/transform/Source;
    goto/16 :goto_26

    .line 223
    .end local v10           #source:Ljavax/xml/transform/Source;
    :catch_17f
    move-exception v16

    move-object/from16 v11, v16

    .line 225
    .local v11, te:Ljavax/xml/transform/TransformerException;
    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16

    .line 228
    .end local v11           #te:Ljavax/xml/transform/TransformerException;
    .restart local v10       #source:Ljavax/xml/transform/Source;
    :cond_18b
    const-string v16, "title"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1db

    .line 230
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 231
    :goto_19a
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_1c6

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c1

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c1

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c6

    .line 233
    :cond_1c1
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_19a

    .line 234
    :cond_1c6
    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_26

    .line 236
    :cond_1db
    const-string v16, "media"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22b

    .line 238
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 239
    :goto_1ea
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_216

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_211

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_211

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_216

    .line 241
    :cond_211
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_1ea

    .line 242
    :cond_216
    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_26

    .line 244
    :cond_22b
    const-string v16, "charset"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27b

    .line 246
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 247
    :goto_23a
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_266

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_261

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_261

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_266

    .line 249
    :cond_261
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_23a

    .line 250
    :cond_266
    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_26

    .line 252
    :cond_27b
    const-string v16, "alternate"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_26

    .line 254
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 255
    :goto_28a
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_2b6

    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2b1

    const-string v16, "\t"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2b1

    const-string v16, "="

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b6

    .line 257
    :cond_2b1
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    goto :goto_28a

    .line 258
    :cond_2b6
    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "yes"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_26

    .line 264
    .end local v9           #name:Ljava/lang/String;
    :cond_2d1
    if-eqz v15, :cond_306

    const-string v16, "text/xsl"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2eb

    const-string v16, "text/xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2eb

    const-string v16, "application/xml+xslt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_306

    :cond_2eb
    if-eqz v6, :cond_306

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_307

    .line 270
    if-eqz v8, :cond_306

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_307

    .line 304
    .end local v4           #alternate:Z
    .end local v5           #charset:Ljava/lang/String;
    .end local v6           #href:Ljava/lang/String;
    .end local v7           #lookedAhead:Z
    .end local v8           #media:Ljava/lang/String;
    .end local v10           #source:Ljavax/xml/transform/Source;
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #token:Ljava/lang/String;
    .end local v14           #tokenizer:Ljava/util/StringTokenizer;
    .end local v15           #type:Ljava/lang/String;
    :cond_306
    :goto_306
    return-void

    .line 279
    .restart local v4       #alternate:Z
    .restart local v5       #charset:Ljava/lang/String;
    .restart local v6       #href:Ljava/lang/String;
    .restart local v7       #lookedAhead:Z
    .restart local v8       #media:Ljava/lang/String;
    .restart local v10       #source:Ljavax/xml/transform/Source;
    .restart local v12       #title:Ljava/lang/String;
    .restart local v13       #token:Ljava/lang/String;
    .restart local v14       #tokenizer:Ljava/util/StringTokenizer;
    .restart local v15       #type:Ljava/lang/String;
    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_320

    .line 281
    if-eqz v5, :cond_306

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_306

    .line 290
    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_339

    .line 292
    if-eqz v12, :cond_306

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_306

    .line 301
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_306
.end method

.method public setBaseId(Ljava/lang/String;)V
    .registers 2
    .parameter "baseId"

    .prologue
    .line 333
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lorg/apache/xml/utils/StopParseException;

    invoke-direct {v0}, Lorg/apache/xml/utils/StopParseException;-><init>()V

    throw v0
.end method
