.class public Lcom/asus/vibe/api/premium/VibePremiumXmlParser;
.super Ljava/lang/Object;
.source "VibePremiumXmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseGetContent(Ljava/io/File;ZLcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 13
    .parameter "response"
    .parameter "paidOnly"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 221
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v12

    .line 265
    :goto_0
    return-object v9

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 223
    .local v4, doc:Lorg/w3c/dom/Document;
    if-nez v4, :cond_1

    move-object v9, v12

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v12

    goto :goto_0

    .line 225
    :cond_2
    const-string v9, "content"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 226
    .local v2, contentList:Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_4

    .line 227
    :cond_3
    const-string v9, "ASUS@Vibe"

    const-string v10, "PremiumParser: No content available!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 228
    goto :goto_0

    .line 231
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_f

    .line 233
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v12

    goto :goto_0

    .line 234
    :cond_5
    new-instance v0, Lcom/asus/vibe/item/VibeItem_Cont;

    invoke-direct {v0}, Lcom/asus/vibe/item/VibeItem_Cont;-><init>()V

    .line 235
    .local v0, content:Lcom/asus/vibe/item/VibeItem_Cont;
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 236
    .local v3, contentNode:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 237
    .local v1, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_c

    .line 238
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v12

    goto :goto_0

    .line 239
    :cond_6
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "spcontentid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 240
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\t"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    .line 241
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: spcontentid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 242
    :cond_8
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "contentname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 243
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\t"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    .line 244
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: contentname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 245
    :cond_9
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "coverpicuri"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 246
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, imgLink:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 248
    iput-object v6, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 249
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: coverpicuri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 250
    .end local v6           #imgLink:Ljava/lang/String;
    :cond_a
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isfree"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 251
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\t"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsFree:Z

    .line 252
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: isfree="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsFree:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 253
    :cond_b
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "paid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 254
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\t"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\r"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsPaid:Z

    .line 255
    sget-boolean v9, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: paid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsPaid:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 258
    :cond_c
    if-eqz p1, :cond_d

    iget-boolean v9, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mIsPaid:Z

    if-eqz v9, :cond_e

    .line 259
    :cond_d
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 262
    .end local v0           #content:Lcom/asus/vibe/item/VibeItem_Cont;
    .end local v1           #contentChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #contentNode:Lorg/w3c/dom/Node;
    .end local v7           #j:I
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10

    move-object v9, v8

    .line 263
    goto/16 :goto_0

    :cond_10
    move-object v9, v12

    .line 265
    goto/16 :goto_0
.end method

.method public static parseGetContentDetail(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Detail;
    .locals 9
    .parameter "response"
    .parameter "interrupter"

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 389
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 271
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 272
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 274
    :cond_2
    const-string v0, "getcontentdetailresponse"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 275
    .local p0, contentList:Lorg/w3c/dom/NodeList;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-gtz v0, :cond_4

    .line 276
    :cond_3
    const-string p0, "ASUS@Vibe"

    .end local p0           #contentList:Lorg/w3c/dom/NodeList;
    const-string p1, "PremiumParser: No content detail available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 p0, 0x0

    goto :goto_0

    .line 280
    .restart local p0       #contentList:Lorg/w3c/dom/NodeList;
    .restart local p1
    :cond_4
    new-instance v3, Lcom/asus/vibe/item/VibeItem_Detail;

    invoke-direct {v3}, Lcom/asus/vibe/item/VibeItem_Detail;-><init>()V

    .line 281
    .local v3, detail:Lcom/asus/vibe/item/VibeItem_Detail;
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 282
    .local p0, contentNode:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 283
    .local v2, contentChilds:Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, i:I
    move v4, p0

    .end local p0           #i:I
    .local v4, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v4, p0, :cond_22

    .line 284
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 285
    :cond_5
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "spcontentid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 286
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "ASUS@Vibe"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumParser: spcontentid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_6
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mSPContentId:Ljava/lang/String;

    .line 283
    :cond_7
    :goto_2
    add-int/lit8 p0, v4, 0x1

    .end local v4           #i:I
    .restart local p0       #i:I
    move v4, p0

    .end local p0           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 288
    :cond_8
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contentname"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 289
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "ASUS@Vibe"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumParser: contentname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_9
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    goto :goto_2

    .line 291
    :cond_a
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "coverpicuri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 293
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 294
    .local p0, imgLink:Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 295
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: coverpicuri="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_b
    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mImageUrl:Ljava/lang/String;

    goto :goto_2

    .line 297
    .end local p0           #imgLink:Ljava/lang/String;
    :cond_c
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "previewuri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 298
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, link:Ljava/lang/String;
    const/4 v1, 0x0

    .line 300
    .local v1, mimetype:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v5, "silverlightplayer"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 302
    const-string p0, "ASUS@Vibe"

    const-string v1, "PremiumParser: ignore Silverlight uri:"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string p0, "ASUS@Vibe"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 306
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_d
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 307
    .local p0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_24

    const-string v5, "mimetype"

    invoke-interface {p0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_24

    .line 308
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    const-string v1, "mimetype"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    .line 310
    .local p0, mimetype:Ljava/lang/String;
    :goto_3
    iget-object v1, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .line 311
    :cond_e
    new-instance v1, Lcom/asus/vibe/item/VibeUri;

    invoke-direct {v1}, Lcom/asus/vibe/item/VibeUri;-><init>()V

    .line 312
    .local v1, previewUri:Lcom/asus/vibe/item/VibeUri;
    const-string v5, "preview"

    iput-object v5, v1, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    .line 313
    sget-boolean v5, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v5, "ASUS@Vibe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PremiumParser: previewuri mimetype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_f
    iput-object p0, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    .line 315
    sget-boolean p0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    .end local p0           #mimetype:Ljava/lang/String;
    if-eqz p0, :cond_10

    const-string p0, "ASUS@Vibe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PremiumParser: previewuri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_10
    iput-object v0, v1, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 317
    iget-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 318
    .end local v0           #link:Ljava/lang/String;
    .end local v1           #previewUri:Lcom/asus/vibe/item/VibeUri;
    :cond_11
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "premiumuri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 319
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0       #link:Ljava/lang/String;
    const/4 v1, 0x0

    .line 321
    .local v1, mimetype:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v5, "silverlightplayer"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 323
    const-string p0, "ASUS@Vibe"

    const-string v1, "PremiumParser: ignore Silverlight uri:"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string p0, "ASUS@Vibe"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 327
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_12
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 328
    .local p0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_23

    const-string v5, "mimetype"

    invoke-interface {p0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_23

    .line 329
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    const-string v1, "mimetype"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    .line 331
    .local p0, mimetype:Ljava/lang/String;
    :goto_4
    iget-object v1, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .line 332
    :cond_13
    new-instance v1, Lcom/asus/vibe/item/VibeUri;

    invoke-direct {v1}, Lcom/asus/vibe/item/VibeUri;-><init>()V

    .line 333
    .local v1, premiumUri:Lcom/asus/vibe/item/VibeUri;
    const-string v5, "premium"

    iput-object v5, v1, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    .line 334
    const-string v5, "ASUS@Vibe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PremiumParser: premiumuri mimetype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-object p0, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    .line 336
    const-string p0, "ASUS@Vibe"

    .end local p0           #mimetype:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PremiumParser: premiumuri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object v0, v1, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 338
    iget-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 339
    .end local v0           #link:Ljava/lang/String;
    .end local v1           #premiumUri:Lcom/asus/vibe/item/VibeUri;
    :cond_14
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "downloaduri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 341
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0       #link:Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, mimetype:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v5, "silverlightplayer"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 345
    const-string p0, "ASUS@Vibe"

    const-string v1, "PremiumParser: ignore Silverlight uri:"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string p0, "ASUS@Vibe"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 349
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_15
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 350
    .local p0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_16

    const-string v5, "mimetype"

    invoke-interface {p0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz p0, :cond_16

    .line 351
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    const-string v1, "mimetype"

    .end local v1           #mimetype:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    .local p0, mimetype:Ljava/lang/String;
    move-object v1, p0

    .line 353
    .end local p0           #mimetype:Ljava/lang/String;
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_16
    iget-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-nez p0, :cond_17

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .line 354
    :cond_17
    new-instance p0, Lcom/asus/vibe/item/VibeUri;

    invoke-direct {p0}, Lcom/asus/vibe/item/VibeUri;-><init>()V

    .line 355
    .local p0, downloadUri:Lcom/asus/vibe/item/VibeUri;
    const-string v5, "download"

    iput-object v5, p0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    .line 356
    sget-boolean v5, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v5, :cond_18

    const-string v5, "ASUS@Vibe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PremiumParser: downloaduri mimetype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_18
    iput-object v1, p0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    .line 358
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    .end local v1           #mimetype:Ljava/lang/String;
    if-eqz v1, :cond_19

    const-string v1, "ASUS@Vibe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PremiumParser: downloaduri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_19
    iput-object v0, p0, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    .line 360
    iget-object v0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    .end local v0           #link:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 361
    .end local p0           #downloadUri:Lcom/asus/vibe/item/VibeUri;
    :cond_1a
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isfree"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 362
    const-string p0, "ASUS@Vibe"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumParser: isfree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mIsFree:Z

    goto/16 :goto_2

    .line 364
    :cond_1b
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "paid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 365
    const-string p0, "ASUS@Vibe"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumParser: paid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mIsPaid:Z

    goto/16 :goto_2

    .line 367
    :cond_1c
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, attrName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 370
    .local v1, attrValue:Ljava/lang/String;
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 371
    .local p0, attrChilds:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_20

    .line 372
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 373
    :cond_1d
    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PremiumParser: attrChilds.item(j) Name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v6, "ASUS@Vibe"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PremiumParser: attrChilds.item(j) Content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "attrname"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 376
    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0           #attrName:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 371
    .restart local v0       #attrName:Ljava/lang/String;
    :cond_1e
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 377
    :cond_1f
    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "attrvalue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 378
    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .end local v1           #attrValue:Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #attrValue:Ljava/lang/String;
    goto :goto_6

    .line 381
    :cond_20
    const-string p0, "ASUS@Vibe"

    .end local p0           #attrChilds:Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #j:I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PremiumParser: attr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    if-nez p0, :cond_21

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":\n"

    .end local v0           #attrName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    goto/16 :goto_2

    .line 385
    .restart local v0       #attrName:Ljava/lang/String;
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    .end local v0           #attrName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mDescription:Ljava/lang/String;

    goto/16 :goto_2

    .end local v1           #attrValue:Ljava/lang/String;
    :cond_22
    move-object p0, v3

    .line 389
    goto/16 :goto_0

    .local v0, link:Ljava/lang/String;
    .local v1, mimetype:Ljava/lang/String;
    :cond_23
    move-object p0, v1

    .end local v1           #mimetype:Ljava/lang/String;
    .local p0, mimetype:Ljava/lang/String;
    goto/16 :goto_4

    .end local p0           #mimetype:Ljava/lang/String;
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_24
    move-object p0, v1

    .end local v1           #mimetype:Ljava/lang/String;
    .restart local p0       #mimetype:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static parseGetPackage(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 13
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
            "Lcom/asus/vibe/item/VibeItem_Package;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 393
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v12

    .line 434
    :goto_0
    return-object v9

    .line 394
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 395
    .local v0, doc:Lorg/w3c/dom/Document;
    if-nez v0, :cond_1

    move-object v9, v12

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v12

    goto :goto_0

    .line 397
    :cond_2
    const-string v9, "package"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 398
    .local v5, packageList:Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_4

    :cond_3
    move-object v9, v12

    .line 399
    goto :goto_0

    .line 402
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Package;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_d

    .line 404
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v12

    goto :goto_0

    .line 405
    :cond_5
    new-instance v4, Lcom/asus/vibe/item/VibeItem_Package;

    invoke-direct {v4}, Lcom/asus/vibe/item/VibeItem_Package;-><init>()V

    .line 406
    .local v4, packageItem:Lcom/asus/vibe/item/VibeItem_Package;
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 407
    .local v6, packageNode:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 408
    .local v3, packageChilds:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_c

    .line 409
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v12

    goto :goto_0

    .line 410
    :cond_6
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "packageid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 411
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: packageid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/asus/vibe/item/VibeItem_Package;->mPackageId:Ljava/lang/String;

    .line 408
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 413
    :cond_8
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "paymenturi"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 414
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, paymenturi:Ljava/lang/String;
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: paymenturi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iput-object v7, v4, Lcom/asus/vibe/item/VibeItem_Package;->mPaymentUri:Ljava/lang/String;

    goto :goto_3

    .line 417
    .end local v7           #paymenturi:Ljava/lang/String;
    :cond_9
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "packagedesc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 418
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: packagedesc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/asus/vibe/item/VibeItem_Package;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 420
    :cond_a
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "price"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 421
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: price="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/asus/vibe/item/VibeItem_Package;->mPrice:Ljava/lang/String;

    goto/16 :goto_3

    .line 423
    :cond_b
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "currency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 424
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: currency="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/asus/vibe/item/VibeItem_Package;->mCurrency:Ljava/lang/String;

    goto/16 :goto_3

    .line 428
    :cond_c
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 431
    .end local v2           #j:I
    .end local v3           #packageChilds:Lorg/w3c/dom/NodeList;
    .end local v4           #packageItem:Lcom/asus/vibe/item/VibeItem_Package;
    .end local v6           #packageNode:Lorg/w3c/dom/Node;
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    move-object v9, v8

    .line 432
    goto/16 :goto_0

    :cond_e
    move-object v9, v12

    .line 434
    goto/16 :goto_0
.end method

.method public static parseMainCategory(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v12

    .line 103
    :goto_0
    return-object v9

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 64
    .local v1, docVibeAuth:Lorg/w3c/dom/Document;
    if-nez v1, :cond_1

    move-object v9, v12

    goto :goto_0

    .line 65
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, mainCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v12

    goto :goto_0

    .line 68
    :cond_2
    const-string v9, "maincategorycontent"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 69
    .local v5, mainCategoryList:Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_4

    .line 70
    :cond_3
    const-string v9, "ASUS@Vibe"

    const-string v10, "PremiumParser: No main category available!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_e

    .line 74
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v12

    goto :goto_0

    .line 75
    :cond_5
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 76
    .local v6, mainCategoryNode:Lorg/w3c/dom/Node;
    new-instance v7, Lcom/asus/vibe/item/VibeItem_Main;

    invoke-direct {v7}, Lcom/asus/vibe/item/VibeItem_Main;-><init>()V

    .line 77
    .local v7, newMainCategory:Lcom/asus/vibe/item/VibeItem_Main;
    const/4 v8, 0x0

    .line 78
    .local v8, totalSubcategoryCount:I
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 79
    .local v0, childs:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 80
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v12

    goto :goto_0

    .line 81
    :cond_6
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "maincategoryid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 82
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: maincategoryid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    .line 79
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 84
    :cond_8
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "maincategoryname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 85
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: maincategoryname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    goto :goto_3

    .line 87
    :cond_9
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "maincategory"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 88
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: maincategory="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    goto :goto_3

    .line 90
    :cond_a
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "totalsubcategorycount"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 91
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: totalsubcategorycount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_3

    .line 95
    :cond_b
    iget-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 96
    iget-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    iput-object v9, v7, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    .line 98
    :cond_c
    if-lez v8, :cond_d

    .line 99
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v0           #childs:Lorg/w3c/dom/NodeList;
    .end local v3           #j:I
    .end local v6           #mainCategoryNode:Lorg/w3c/dom/Node;
    .end local v7           #newMainCategory:Lcom/asus/vibe/item/VibeItem_Main;
    .end local v8           #totalSubcategoryCount:I
    :cond_e
    move-object v9, v4

    .line 103
    goto/16 :goto_0
.end method

.method public static parseOrderInfo(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;
    .locals 6
    .parameter "response"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, orderOpenUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 453
    :goto_0
    return-object v3

    .line 441
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 442
    .local v0, doc:Lorg/w3c/dom/Document;
    if-nez v0, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 444
    :cond_2
    const-string v3, "orderopenurl"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 445
    .local v2, orderOpenUrlList:Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    move-object v3, v4

    .line 446
    goto :goto_0

    .line 448
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/vibe2/Utils_Vibe;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: orderopenurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 451
    const/4 v1, 0x0

    :cond_5
    move-object v3, v1

    .line 453
    goto :goto_0
.end method

.method public static parseServiceProviders(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
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
    .line 107
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 150
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 108
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 109
    .local p0, doc:Lorg/w3c/dom/Document;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "indivsp"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 112
    .local v6, spList:Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    if-gtz p0, :cond_4

    .line 113
    :cond_3
    const-string p0, "ASUS@Vibe"

    const-string p1, "PremiumParser: No service provider available!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 p0, 0x0

    goto :goto_0

    .line 117
    .restart local p1
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, serviceProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Sub;>;"
    const/4 p0, 0x0

    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v0, p0, :cond_c

    .line 119
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_5
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 121
    .local p0, indivSpNode:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 122
    .local v2, indivSpChilds:Lorg/w3c/dom/NodeList;
    const-string p0, ""

    .line 123
    .local p0, indivSpName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    move v4, v1

    .end local v1           #j:I
    .local v4, j:I
    move-object v3, p0

    .end local p0           #indivSpName:Ljava/lang/String;
    .local v3, indivSpName:Ljava/lang/String;
    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v4, p0, :cond_b

    .line 124
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_0

    .line 125
    :cond_6
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "indivspname"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 126
    const-string p0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PremiumParser: indivspname="

    .end local v3           #indivSpName:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    .line 123
    .restart local p0       #indivSpName:Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v4, 0x1

    .end local v4           #j:I
    .restart local v1       #j:I
    move v4, v1

    .end local v1           #j:I
    .restart local v4       #j:I
    move-object v3, p0

    .end local p0           #indivSpName:Ljava/lang/String;
    .restart local v3       #indivSpName:Ljava/lang/String;
    goto :goto_2

    .line 128
    :cond_7
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "subcategorycontent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 129
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0, v3, p1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseSubCategory(Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Sub;

    move-result-object v8

    .line 130
    .local v8, subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    if-eqz v8, :cond_a

    .line 131
    const/4 p0, 0x0

    .line 132
    .local p0, existed:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/vibe/item/VibeItem_Sub;

    .line 133
    .local v7, sub:Lcom/asus/vibe/item/VibeItem_Sub;
    iget-object v7, v7, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    .end local v7           #sub:Lcom/asus/vibe/item/VibeItem_Sub;
    iget-object v9, v8, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 134
    const/4 p0, 0x1

    .line 138
    :cond_9
    if-nez p0, :cond_a

    .line 140
    const-string p0, ""

    .end local p0           #existed:Z
    iput-object p0, v8, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    .line 141
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    :cond_a
    move-object p0, v3

    .end local v3           #indivSpName:Ljava/lang/String;
    .local p0, indivSpName:Ljava/lang/String;
    goto :goto_3

    .line 118
    .end local p0           #indivSpName:Ljava/lang/String;
    .restart local v3       #indivSpName:Ljava/lang/String;
    :cond_b
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto/16 :goto_1

    .line 147
    .end local v2           #indivSpChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #indivSpName:Ljava/lang/String;
    .end local v4           #j:I
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_d

    move-object p0, v5

    .line 148
    goto/16 :goto_0

    .line 150
    :cond_d
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static parseSubCategories(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v12

    .line 187
    :goto_0
    return-object v9

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 157
    .local v0, doc:Lorg/w3c/dom/Document;
    if-nez v0, :cond_1

    move-object v9, v12

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v12

    goto :goto_0

    .line 159
    :cond_2
    const-string v9, "indivsp"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 160
    .local v6, spList:Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_4

    .line 161
    :cond_3
    const-string v9, "ASUS@Vibe"

    const-string v10, "PremiumParser: No sub category available!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 162
    goto :goto_0

    .line 165
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v7, subCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Sub;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_a

    .line 167
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v12

    goto :goto_0

    .line 168
    :cond_5
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 169
    .local v4, indivSpNode:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 170
    .local v2, indivSpChilds:Lorg/w3c/dom/NodeList;
    const-string v3, ""

    .line 171
    .local v3, indivSpName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_9

    .line 172
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v12

    goto :goto_0

    .line 173
    :cond_6
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "indivspname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 174
    const-string v9, "ASUS@Vibe"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PremiumParser: indivspname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 176
    :cond_8
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "subcategorycontent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 177
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-static {v9, v3, p1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseSubCategory(Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Sub;

    move-result-object v8

    .line 178
    .local v8, subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    if-eqz v8, :cond_7

    .line 179
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 166
    .end local v8           #subCategory:Lcom/asus/vibe/item/VibeItem_Sub;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 184
    .end local v2           #indivSpChilds:Lorg/w3c/dom/NodeList;
    .end local v3           #indivSpName:Ljava/lang/String;
    .end local v4           #indivSpNode:Lorg/w3c/dom/Node;
    .end local v5           #j:I
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    move-object v9, v7

    .line 185
    goto/16 :goto_0

    :cond_b
    move-object v9, v12

    .line 187
    goto/16 :goto_0
.end method

.method private static parseSubCategory(Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Sub;
    .locals 7
    .parameter "subCategoryNode"
    .parameter "indivSpName"
    .parameter "interrupter"

    .prologue
    const/4 v6, 0x0

    .line 192
    if-nez p0, :cond_0

    move-object v3, v6

    .line 217
    :goto_0
    return-object v3

    .line 193
    :cond_0
    new-instance v2, Lcom/asus/vibe/item/VibeItem_Sub;

    invoke-direct {v2}, Lcom/asus/vibe/item/VibeItem_Sub;-><init>()V

    .line 194
    .local v2, subcategory:Lcom/asus/vibe/item/VibeItem_Sub;
    iput-object p1, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v6

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 197
    .local v1, subCategoryChilds:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 198
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v6

    goto :goto_0

    .line 199
    :cond_2
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "subcategoryid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: subcategoryid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    .line 197
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_4
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "subcategoryname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->normalize()V

    .line 204
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: subcategoryname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    goto :goto_2

    .line 206
    :cond_5
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contenturl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: contenturl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    goto :goto_2

    .line 209
    :cond_6
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contentdetailurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: contentdetailurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 212
    :cond_7
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packageurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    const-string v3, "ASUS@Vibe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PremiumParser: packageurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object v3, v2

    .line 217
    goto/16 :goto_0
.end method

.method public static parseVibeAuth(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;
    .locals 12
    .parameter "response"
    .parameter "interrupter"

    .prologue
    const/4 v11, 0x0

    .line 23
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v11

    .line 58
    :goto_0
    return-object v8

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/asus/vibe/api/VibeXmlParser;->parseXmlFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 25
    .local v1, docVibeAuth:Lorg/w3c/dom/Document;
    if-nez v1, :cond_1

    move-object v8, v11

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .local v0, authKey:Ljava/lang/String;
    const/4 v2, 0x0

    .line 28
    .local v2, headerMode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 29
    .local v4, orderProcessUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v11

    goto :goto_0

    .line 30
    :cond_2
    const-string v8, "vibeauthresp"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 31
    .local v6, vibeAuthRespList:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 32
    .local v7, vibeAuthRespNode:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 33
    .local v5, vibeAuthRespChilds:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 34
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v11

    goto :goto_0

    .line 35
    :cond_3
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "authkey"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 36
    const-string v8, "ASUS@Vibe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PremiumParser: authkey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    :cond_5
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "headermode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 39
    const-string v8, "ASUS@Vibe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PremiumParser: headermode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 41
    :cond_6
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "orderprocessurl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 42
    const-string v8, "ASUS@Vibe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PremiumParser: orderprocessurl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 46
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 47
    invoke-static {v0}, Lcom/asus/vibe2/Vibe;->setVibePremiumAuthKey(Ljava/lang/String;)V

    .line 49
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 50
    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Lcom/asus/vibe2/Vibe;->setVibePremiumHeaderMode(Z)V

    .line 52
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 53
    invoke-static {v4}, Lcom/asus/vibe2/Vibe;->setVibePremiumOrderProcessUrl(Ljava/lang/String;)V

    .line 55
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    move-object v8, v11

    .line 56
    goto/16 :goto_0

    :cond_c
    move-object v8, v0

    .line 58
    goto/16 :goto_0
.end method
