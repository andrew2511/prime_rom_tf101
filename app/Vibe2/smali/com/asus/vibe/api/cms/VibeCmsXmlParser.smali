.class public Lcom/asus/vibe/api/cms/VibeCmsXmlParser;
.super Ljava/lang/Object;
.source "VibeCmsXmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 12
    .parameter "response"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 309
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 257
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 258
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 260
    :cond_2
    const-string v0, "item"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 261
    .local v4, itemList:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    if-gtz p0, :cond_3

    .line 262
    const-string p0, "ASUS@Vibe"

    const-string p1, "CmsParser: No content available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 p0, 0x0

    goto :goto_0

    .line 265
    .restart local p1
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    const/4 p0, 0x0

    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .local v2, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v2, p0, :cond_12

    .line 267
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 268
    :cond_4
    new-instance p0, Lcom/asus/vibe/item/VibeItem_Cont;

    invoke-direct {p0}, Lcom/asus/vibe/item/VibeItem_Cont;-><init>()V

    .line 269
    .local p0, content:Lcom/asus/vibe/item/VibeItem_Cont;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsFree:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsPaid:Z

    .line 271
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 272
    .local v0, itemNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 273
    .local v3, itemChilds:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, j:I
    move v5, v0

    .end local v0           #j:I
    .local v5, j:I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v5, v0, :cond_11

    .line 274
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 275
    :cond_5
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 276
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 277
    .local v1, descriptionChilds:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, k:I
    move v6, v0

    .end local v0           #k:I
    .local v6, k:I
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_10

    .line 278
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 279
    :cond_6
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "imglink"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, imgLink:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 277
    .end local v0           #imgLink:Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v0, v6, 0x1

    .end local v6           #k:I
    .local v0, k:I
    move v6, v0

    .end local v0           #k:I
    .restart local v6       #k:I
    goto :goto_3

    .line 282
    .local v0, imgLink:Ljava/lang/String;
    :cond_8
    sget-boolean v7, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "ASUS@Vibe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CmsParser: imglink="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_9
    iput-object v0, p0, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    goto :goto_4

    .line 284
    .end local v0           #imgLink:Ljava/lang/String;
    :cond_a
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "contentid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 285
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmsParser: contentid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_b
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    goto :goto_4

    .line 291
    :cond_c
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "content"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 293
    .local v0, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, l:I
    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 294
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 295
    :cond_d
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 296
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CmsParser: name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_e
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    .line 293
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 273
    .end local v0           #contentChilds:Lorg/w3c/dom/NodeList;
    .end local v1           #descriptionChilds:Lorg/w3c/dom/NodeList;
    .end local v6           #k:I
    .end local v7           #l:I
    :cond_10
    add-int/lit8 v0, v5, 0x1

    .end local v5           #j:I
    .local v0, j:I
    move v5, v0

    .end local v0           #j:I
    .restart local v5       #j:I
    goto/16 :goto_2

    .line 304
    :cond_11
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 p0, v2, 0x1

    .end local v2           #i:I
    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .restart local v2       #i:I
    goto/16 :goto_1

    .line 306
    .end local v3           #itemChilds:Lorg/w3c/dom/NodeList;
    .end local v5           #j:I
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_13

    move-object p0, v8

    .line 307
    goto/16 :goto_0

    .line 309
    :cond_13
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static parseContentDetail(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Detail;
    .locals 10
    .parameter "response"
    .parameter "interrupter"

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 403
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 339
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 340
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 342
    :cond_2
    const-string v0, "item"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 343
    .local p0, itemList:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-gtz v0, :cond_3

    .line 344
    const-string p0, "ASUS@Vibe"

    .end local p0           #itemList:Lorg/w3c/dom/NodeList;
    const-string p1, "CmsParser: No content detail available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 p0, 0x0

    goto :goto_0

    .line 347
    .restart local p0       #itemList:Lorg/w3c/dom/NodeList;
    .restart local p1
    :cond_3
    new-instance v5, Lcom/asus/vibe/item/VibeItem_Detail;

    invoke-direct {v5}, Lcom/asus/vibe/item/VibeItem_Detail;-><init>()V

    .line 348
    .local v5, result:Lcom/asus/vibe/item/VibeItem_Detail;
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mIsFree:Z

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mIsPaid:Z

    .line 350
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 351
    .local p0, itemNode:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 352
    .local v1, itemChilds:Lorg/w3c/dom/NodeList;
    iget-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .end local p0           #itemNode:Lorg/w3c/dom/Node;
    if-nez p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .line 353
    :cond_4
    const/4 p0, 0x0

    .local p0, j:I
    move v2, p0

    .end local p0           #j:I
    .local v2, j:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v2, p0, :cond_1b

    .line 354
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 355
    :cond_5
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 356
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, link:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 353
    .end local v0           #link:Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 p0, v2, 0x1

    .end local v2           #j:I
    .restart local p0       #j:I
    move v2, p0

    .end local p0           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 358
    .restart local v0       #link:Ljava/lang/String;
    :cond_7
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "ASUS@Vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CmsParser: link="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_8
    new-instance p0, Lcom/asus/vibe/item/VibeUri;

    invoke-direct {p0}, Lcom/asus/vibe/item/VibeUri;-><init>()V

    .line 360
    .local p0, freeUri:Lcom/asus/vibe/item/VibeUri;
    const-string v3, "free"

    iput-object v3, p0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    .line 361
    iput-object v0, p0, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 362
    iget-object v0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .end local v0           #link:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 364
    .end local p0           #freeUri:Lcom/asus/vibe/item/VibeUri;
    :cond_9
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "description"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 365
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 366
    .local v0, descriptionChilds:Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, k:I
    move v3, p0

    .end local p0           #k:I
    .local v3, k:I
    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v3, p0, :cond_6

    .line 367
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 368
    :cond_a
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "imglink"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 369
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    .local p0, imgLink:Ljava/lang/String;
    if-nez p0, :cond_c

    .line 366
    .end local p0           #imgLink:Ljava/lang/String;
    :cond_b
    :goto_4
    add-int/lit8 p0, v3, 0x1

    .end local v3           #k:I
    .local p0, k:I
    move v3, p0

    .end local p0           #k:I
    .restart local v3       #k:I
    goto :goto_3

    .line 371
    .local p0, imgLink:Ljava/lang/String;
    :cond_c
    sget-boolean v4, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "ASUS@Vibe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CmsParser: imglink="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_d
    iput-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mImageUrl:Ljava/lang/String;

    goto :goto_4

    .line 373
    .end local p0           #imgLink:Ljava/lang/String;
    :cond_e
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "contentid"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 374
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CmsParser: contentid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_f
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mSPContentId:Ljava/lang/String;

    goto :goto_4

    .line 377
    :cond_10
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "spcontentid"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 378
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_11

    const-string p0, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CmsParser: spcontentid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_11
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mSPContentId:Ljava/lang/String;

    goto/16 :goto_4

    .line 380
    :cond_12
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "playertype"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 381
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_13

    const-string p0, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CmsParser: playerType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_13
    iget-object p0, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/vibe/item/VibeUri;

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    goto/16 :goto_4

    .line 383
    :cond_14
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "content"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 384
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 385
    .local p0, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, l:I
    :goto_5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 386
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 387
    :cond_15
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 388
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_16

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_16
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    .line 385
    :cond_17
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 390
    :cond_18
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "desc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 391
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_19

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: desc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_19
    iget-object v6, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    if-nez v6, :cond_1a

    .line 393
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\t"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    goto :goto_6

    .line 395
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\t"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    goto :goto_6

    .end local v0           #descriptionChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #k:I
    .end local v4           #l:I
    .end local p0           #contentChilds:Lorg/w3c/dom/NodeList;
    :cond_1b
    move-object p0, v5

    .line 403
    goto/16 :goto_0
.end method

.method public static parseIpInfo(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;
    .locals 9
    .parameter "response"
    .parameter "interrupter"

    .prologue
    const/4 v8, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    .local v5, ipRegion:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v8

    .line 38
    :goto_0
    return-object v6

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 25
    .local v3, doc:Lorg/w3c/dom/Document;
    if-nez v3, :cond_1

    move-object v6, v8

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 27
    :cond_2
    const-string v6, "clientinfo"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 28
    .local v2, clientinfolist:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 29
    .local v1, clientinfo:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 30
    .local v0, childs:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 32
    :cond_3
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "region"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 33
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 34
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: region="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v6, v5

    .line 38
    goto :goto_0

    .line 30
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static parsePresentationGroups(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 10
    .parameter "response"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 148
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 111
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 112
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "item"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 116
    .local v2, itemList:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    if-gtz p0, :cond_3

    .line 117
    const-string p0, "ASUS@Vibe"

    const-string p1, "CmsParser: No main category available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v6

    .line 118
    goto :goto_0

    .line 120
    .restart local p1
    :cond_3
    const/4 p0, 0x0

    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v0, p0, :cond_d

    .line 121
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 122
    :cond_4
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 123
    .local p0, item:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 124
    .local v1, itemChilds:Lorg/w3c/dom/NodeList;
    new-instance v5, Lcom/asus/vibe/item/VibeItem_Main;

    invoke-direct {v5}, Lcom/asus/vibe/item/VibeItem_Main;-><init>()V

    .line 125
    .local v5, mainCategory:Lcom/asus/vibe/item/VibeItem_Main;
    const/4 p0, 0x0

    .local p0, j:I
    move v3, p0

    .end local p0           #j:I
    .local v3, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v3, p0, :cond_c

    .line 126
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 127
    :cond_5
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "description"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 128
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 129
    .local p0, descriptionChilds:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 130
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #descriptionChilds:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 131
    .local p0, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 132
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "presentationid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 134
    sget-boolean v7, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "ASUS@Vibe"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmsParser: presentationid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_7
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    .line 131
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 136
    :cond_9
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "presentationname"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 137
    sget-boolean v7, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "ASUS@Vibe"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmsParser: presentationname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_a
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    .line 139
    iget-object v7, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    iput-object v7, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    goto :goto_4

    .line 125
    .end local v4           #k:I
    .end local p0           #contentChilds:Lorg/w3c/dom/NodeList;
    :cond_b
    add-int/lit8 p0, v3, 0x1

    .end local v3           #j:I
    .local p0, j:I
    move v3, p0

    .end local p0           #j:I
    .restart local v3       #j:I
    goto/16 :goto_2

    .line 145
    :cond_c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_1

    .end local v1           #itemChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #j:I
    .end local v5           #mainCategory:Lcom/asus/vibe/item/VibeItem_Main;
    :cond_d
    move-object p0, v6

    .line 148
    goto/16 :goto_0
.end method

.method public static parseServiceGateway(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;
    .locals 10
    .parameter "response"
    .parameter "interrupter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, serviceGatewayAddress:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v8

    .line 61
    :goto_0
    return-object v6

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 45
    .local v3, doc:Lorg/w3c/dom/Document;
    if-nez v3, :cond_1

    move-object v6, v8

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 47
    :cond_2
    const-string v6, "requestservicegateway"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 48
    .local v2, clientinfolist:Lorg/w3c/dom/NodeList;
    invoke-interface {v2, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 49
    .local v1, clientinfo:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 50
    .local v0, childs:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 51
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "servicegateway"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 53
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: servicegateway="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_4
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 55
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 56
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v6, v5

    .line 61
    goto :goto_0

    .line 50
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static parseSubCategory(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 10
    .parameter "response"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Sub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 219
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 177
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 178
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "item"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 181
    .local v2, itemList:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    if-gtz p0, :cond_3

    .line 182
    const-string p0, "ASUS@Vibe"

    const-string p1, "CmsParser: No subcategory available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 p0, 0x0

    goto :goto_0

    .line 185
    .restart local p1
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Sub;>;"
    new-instance p0, Lcom/asus/vibe/item/VibeItem_Sub;

    invoke-direct {p0}, Lcom/asus/vibe/item/VibeItem_Sub;-><init>()V

    .line 187
    .local p0, subCategoryRecommended:Lcom/asus/vibe/item/VibeItem_Sub;
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    .line 189
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 p0, 0x0

    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v0, p0, :cond_d

    .line 191
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 192
    :cond_4
    new-instance v6, Lcom/asus/vibe/item/VibeItem_Sub;

    invoke-direct {v6}, Lcom/asus/vibe/item/VibeItem_Sub;-><init>()V

    .line 193
    .local v6, subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 194
    .local p0, itemNode:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 195
    .local v1, itemChilds:Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, j:I
    move v3, p0

    .end local p0           #j:I
    .local v3, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v3, p0, :cond_c

    .line 196
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 197
    :cond_5
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "description"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 198
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 199
    .local p0, descriptionChilds:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 200
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #descriptionChilds:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 201
    .local p0, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 202
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 203
    :cond_6
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "subcategoryid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    sget-boolean v7, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "ASUS@Vibe"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmsParser: subcategoryid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_7
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    .line 201
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    :cond_9
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 207
    sget-boolean v7, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "ASUS@Vibe"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmsParser: subcategory name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_a
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    goto :goto_4

    .line 195
    .end local v4           #k:I
    .end local p0           #contentChilds:Lorg/w3c/dom/NodeList;
    :cond_b
    add-int/lit8 p0, v3, 0x1

    .end local v3           #j:I
    .local p0, j:I
    move v3, p0

    .end local p0           #j:I
    .restart local v3       #j:I
    goto/16 :goto_2

    .line 214
    :cond_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_1

    .line 216
    .end local v1           #itemChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #j:I
    .end local v6           #subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_e

    move-object p0, v5

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_e
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static parseToken(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;
    .locals 10
    .parameter "response"
    .parameter "interrupter"

    .prologue
    const/4 v9, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v9

    .line 96
    :goto_0
    return-object v6

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 77
    .local v3, doc:Lorg/w3c/dom/Document;
    if-nez v3, :cond_1

    move-object v6, v9

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v9

    goto :goto_0

    .line 79
    :cond_2
    const-string v6, "aaa"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 80
    .local v2, clientinfolist:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 81
    .local v1, clientinfo:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 82
    .local v0, childs:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 83
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v9

    goto :goto_0

    .line 84
    :cond_3
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 85
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/asus/vibe2/Vibe;->setVibeFreeDefaultToken(Ljava/lang/String;)V

    .line 82
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_6
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rssrelay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 89
    sget-boolean v6, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CmsParser: rssrelay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_7
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/asus/vibe2/Vibe;->setVibeFreeAddress(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v6, v5

    .line 96
    goto/16 :goto_0
.end method
