.class Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/xml/XmlNamespaceDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSerializer"
.end annotation


# instance fields
.field final attributeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final attributeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final errorOnUnknown:Z

.field final subElementNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final subElementValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field textValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V
    .locals 7
    .parameter
    .parameter "elementValue"
    .parameter "errorOnUnknown"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    .line 189
    iput-boolean p3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 191
    .local v4, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    iput-object p2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 211
    :cond_0
    return-void

    .line 194
    :cond_1
    invoke-static {p2}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, fieldValue:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, fieldName:Ljava/lang/String;
    const-string v5, "text()"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    iput-object v2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 202
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_4
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getNamespaceUriForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "alias"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-object v1, v1, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 217
    iget-boolean v1, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "(default)"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v3, p1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://unknown/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_1
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 6
    .parameter "serializer"
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, elementLocalName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 230
    .local v3, elementNamespaceUri:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 231
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 232
    .local v1, colon:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v4, ""

    move-object v0, v4

    .line 234
    .local v0, alias:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->getNamespaceUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    if-nez v3, :cond_0

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://unknown/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #colon:I
    :cond_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 233
    .restart local v1       #colon:I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "serializer"
    .parameter "elementNamespaceUri"
    .parameter "elementLocalName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    move v10, v0

    .line 245
    .local v10, errorOnUnknown:Z
    if-nez p3, :cond_1

    .line 246
    if-eqz v10, :cond_0

    .line 247
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "XML name not specified"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 249
    :cond_0
    const-string p3, "unknownName"

    .line 251
    :cond_1
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    move-object v6, v0

    .line 254
    .local v6, attributeNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    move-object v8, v0

    .line 255
    .local v8, attributeValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    .line 256
    .local v13, num:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_3

    .line 257
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 258
    .local v5, attributeName:Ljava/lang/String;
    const/16 v20, 0x3a

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 259
    .local v9, colon:I
    add-int/lit8 v20, v9, 0x1

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, attributeLocalName:Ljava/lang/String;
    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v20, 0x0

    move-object/from16 v7, v20

    .line 263
    .local v7, attributeNamespaceUri:Ljava/lang/String;
    :goto_1
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v4

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 260
    .end local v7           #attributeNamespaceUri:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v20

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->getNamespaceUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    goto :goto_1

    .line 267
    .end local v4           #attributeLocalName:Ljava/lang/String;
    .end local v5           #attributeName:Ljava/lang/String;
    .end local v9           #colon:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 268
    .local v19, textValue:Ljava/lang/Object;
    if-eqz v19, :cond_4

    .line 269
    invoke-static/range {v19 .. v19}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    move-object/from16 v16, v0

    .line 273
    .local v16, subElementNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    move-object/from16 v18, v0

    .line 274
    .local v18, subElementValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    .line 275
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_7

    .line 276
    move-object/from16 v0, v18

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 277
    .local v17, subElementValue:Ljava/lang/Object;
    move-object/from16 v0, v16

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 278
    .local v15, subElementName:Ljava/lang/String;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/List;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 279
    check-cast v17, Ljava/util/List;

    .end local v17           #subElementValue:Ljava/lang/Object;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 280
    .local v14, subElement:Ljava/lang/Object;
    new-instance v20, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v14

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_3

    .line 284
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #subElement:Ljava/lang/Object;
    .restart local v17       #subElementValue:Ljava/lang/Object;
    :cond_5
    new-instance v20, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 275
    .end local v17           #subElementValue:Ljava/lang/Object;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 288
    .end local v15           #subElementName:Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    return-void
.end method
