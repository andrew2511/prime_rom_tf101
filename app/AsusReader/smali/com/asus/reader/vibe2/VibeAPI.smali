.class public Lcom/asus/reader/vibe2/VibeAPI;
.super Ljava/lang/Object;
.source "VibeAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callLoadPickedSubcategory(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Subcategory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;
    .locals 21
    .parameter "info"
    .parameter "sub"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "searchkey"
    .parameter "contenttype"
    .parameter "subscribed"
    .parameter "cursor"

    .prologue
    .line 930
    const/4 v2, 0x1

    .line 931
    .local v2, returnNull:Z
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 932
    .local v7, firstcontent:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 933
    .local v8, lastcontent:Ljava/lang/String;
    const/16 p3, 0x10

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p3, v0

    .end local p3
    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, p3, v3

    const/4 v3, 0x1

    const-string v4, "_spname"

    aput-object v4, p3, v3

    const/4 v3, 0x2

    const-string v4, "_subcategoryid"

    aput-object v4, p3, v3

    const/4 v3, 0x3

    const-string v4, "_subcategoryname"

    aput-object v4, p3, v3

    const/4 v3, 0x4

    const-string v4, "_spcontentid"

    aput-object v4, p3, v3

    const/4 v3, 0x5

    const-string v4, "_contentname"

    aput-object v4, p3, v3

    const/4 v3, 0x6

    const-string v4, "_coverpicuri"

    aput-object v4, p3, v3

    const/4 v3, 0x7

    const-string v4, "_isfree"

    aput-object v4, p3, v3

    const/16 v3, 0x8

    const-string v4, "_paid"

    aput-object v4, p3, v3

    const/16 v3, 0x9

    const-string v4, "_tag1"

    aput-object v4, p3, v3

    const/16 v3, 0xa

    const-string v4, "_tag2"

    aput-object v4, p3, v3

    const/16 v3, 0xb

    const-string v4, "_osset"

    aput-object v4, p3, v3

    const/16 v3, 0xc

    const-string v4, "_maincategory"

    aput-object v4, p3, v3

    const/16 v3, 0xd

    const-string v4, "_maincategoryid"

    aput-object v4, p3, v3

    const/16 v3, 0xe

    const-string v4, "_totalcount"

    aput-object v4, p3, v3

    const/16 v3, 0xf

    const-string v4, "_search"

    aput-object v4, p3, v3

    .line 951
    .local p3, SUBCATEGORYCONTENTS_COLUMNS:[Ljava/lang/String;
    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/asus/reader/util/LinkedCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    :cond_0
    new-instance p7, Lcom/asus/reader/util/LinkedCursor;

    .end local p7
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/asus/reader/util/LinkedCursor;-><init>([Ljava/lang/String;)V

    .restart local p7
    move/from16 v18, v2

    .line 955
    .end local v2           #returnNull:Z
    .end local p3           #SUBCATEGORYCONTENTS_COLUMNS:[Ljava/lang/String;
    .local v18, returnNull:Z
    :goto_0
    move/from16 v17, p2

    .line 958
    .local v17, id:I
    const-string v19, ""

    .line 959
    .local v19, spname:Ljava/lang/String;
    const/16 p3, 0x0

    .line 960
    .local p3, count:I
    const/16 p2, 0x0

    .line 964
    .local p2, buf:[B
    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 965
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_getcontent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getSubcategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v10

    const-string v12, ""

    const-string v14, ""

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getHeaderMode()Z

    move-result v16

    move-object/from16 v11, p6

    move-object/from16 v13, p5

    invoke-static/range {v2 .. v16}, Lcom/asus/reader/vibe2/VibeAPIBase;->LoadPickedSubcategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object p0

    .line 974
    .end local p2           #buf:[B
    .local p0, buf:[B
    :goto_1
    if-nez p0, :cond_5

    .line 975
    if-eqz v18, :cond_4

    .line 976
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Lcom/asus/reader/util/LinkedCursor;->close()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 977
    const/16 p1, 0x0

    .end local p1
    move/from16 p2, v17

    .end local v17           #id:I
    .local p2, id:I
    move-object/from16 p4, p1

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p3, v19

    .line 1124
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v19           #spname:Ljava/lang/String;
    .end local p4
    .end local p5
    .end local p6
    .local p3, spname:Ljava/lang/String;
    :goto_2
    return-object p4

    .line 954
    .end local v18           #returnNull:Z
    .restart local v2       #returnNull:Z
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, startPosition:I
    .local p3, SUBCATEGORYCONTENTS_COLUMNS:[Ljava/lang/String;
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_2
    const/16 p3, 0x0

    .end local v2           #returnNull:Z
    .local p3, returnNull:Z
    move/from16 v18, p3

    .end local p3           #returnNull:Z
    .restart local v18       #returnNull:Z
    goto :goto_0

    .line 969
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p2, buf:[B
    .local p3, count:I
    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_getcontent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getSubcategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v10

    const-string v12, ""

    const-string v13, ""

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/vibe2/ApplicationInfo;->getHeaderMode()Z

    move-result v16

    move-object/from16 v11, p6

    move-object/from16 v14, p4

    invoke-static/range {v2 .. v16}, Lcom/asus/reader/vibe2/VibeAPIBase;->LoadPickedSubcategorySearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object p0

    .end local p2           #buf:[B
    .local p0, buf:[B
    goto :goto_1

    :cond_4
    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move/from16 p2, v17

    .end local v17           #id:I
    .local p2, id:I
    move-object/from16 p4, p7

    move-object/from16 p3, v19

    .line 979
    .end local v19           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto :goto_2

    .line 983
    .end local p2           #id:I
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p3, count:I
    :cond_5
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    .line 985
    .local p2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 p5, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 986
    .end local p5
    invoke-virtual/range {p2 .. p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 987
    .local p2, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance p5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p5

    .line 989
    .local p5, doc:Lorg/w3c/dom/Document;
    const-string p2, "errorcode"

    .end local p2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 990
    .local p2, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p6

    .end local p6
    const/4 v2, 0x1

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_7

    .line 992
    const/16 p1, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .end local p1           #sub:Lcom/asus/reader/vibe2/Subcategory;
    move-result-object p1

    .line 993
    .local p1, nos:Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 994
    .local p1, status:Ljava/lang/String;
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "error: "

    .end local p5           #doc:Lorg/w3c/dom/Document;
    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .end local p1           #status:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/asus/reader/vibe2/VibeUtil;->checkErrorCode(I)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    if-eqz v18, :cond_6

    .line 996
    invoke-virtual/range {p7 .. p7}, Lcom/asus/reader/util/LinkedCursor;->close()V

    .line 997
    const/16 p1, 0x0

    move/from16 p2, v17

    .end local v17           #id:I
    .local p2, id:I
    move-object/from16 p4, p1

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p3, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .end local p1           #count:I
    .end local p2           #id:I
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :cond_6
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p2, v17

    .end local v17           #id:I
    .restart local p2       #id:I
    move-object/from16 p4, p7

    move-object/from16 p3, v19

    .line 999
    .end local v19           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1005
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, nodes:Lorg/w3c/dom/NodeList;
    .local p3, count:I
    .restart local p4
    .restart local p5       #doc:Lorg/w3c/dom/Document;
    :cond_7
    const-string p2, "spname"

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 1006
    .restart local p2       #nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p6

    const/4 v2, 0x1

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_8

    .line 1008
    const/16 p6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v7

    .line 1023
    .end local v19           #spname:Ljava/lang/String;
    .local v7, spname:Ljava/lang/String;
    :try_start_4
    const-string p2, "totalcount"

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 1024
    .restart local p2       #nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p6

    const/4 v2, 0x1

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_a

    .line 1025
    const/16 p6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Lorg/w3c/dom/DOMException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result p2

    .line 1026
    .end local p3           #count:I
    .local p2, count:I
    :try_start_5
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalcount "

    move-object/from16 v0, p6

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Lorg/w3c/dom/DOMException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1027
    if-nez p2, :cond_c

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p3, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    move-object/from16 p4, p7

    move/from16 p2, v17

    .line 1028
    .end local v17           #id:I
    .local p2, id:I
    goto/16 :goto_2

    .line 1014
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, nodes:Lorg/w3c/dom/NodeList;
    .local p3, count:I
    :cond_8
    :try_start_6
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p1           #sub:Lcom/asus/reader/vibe2/Subcategory;
    const-string p2, "error: spname Miss!"

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1015
    if-eqz v18, :cond_9

    .line 1016
    invoke-virtual/range {p7 .. p7}, Lcom/asus/reader/util/LinkedCursor;->close()V
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lorg/w3c/dom/DOMException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1017
    const/16 p1, 0x0

    move/from16 p2, v17

    .end local v17           #id:I
    .local p2, id:I
    move-object/from16 p4, p1

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p3, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .end local p1           #count:I
    .end local p2           #id:I
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :cond_9
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p2, v17

    .end local v17           #id:I
    .restart local p2       #id:I
    move-object/from16 p4, p7

    move-object/from16 p3, v19

    .line 1019
    .end local v19           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1033
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, nodes:Lorg/w3c/dom/NodeList;
    .local p3, count:I
    :cond_a
    :try_start_7
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p1           #sub:Lcom/asus/reader/vibe2/Subcategory;
    const-string p2, "error: totalcount Miss!"

    .end local p2           #nodes:Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    if-eqz v18, :cond_b

    .line 1035
    invoke-virtual/range {p7 .. p7}, Lcom/asus/reader/util/LinkedCursor;->close()V
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_20
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lorg/w3c/dom/DOMException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1036
    const/16 p1, 0x0

    move/from16 p2, v17

    .end local v17           #id:I
    .local p2, id:I
    move-object/from16 p4, p1

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p3, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .end local p1           #count:I
    .end local p2           #id:I
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    :cond_b
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p2, v17

    .end local v17           #id:I
    .restart local p2       #id:I
    move-object/from16 p4, p7

    move-object/from16 p3, v7

    .line 1038
    .end local v7           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1042
    .end local p3           #spname:Ljava/lang/String;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, count:I
    :cond_c
    :try_start_8
    const-string p3, "content"

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1043
    .local v3, nodes:Lorg/w3c/dom/NodeList;
    const-string p3, "content"

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p3

    const/16 p5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .end local p5           #doc:Lorg/w3c/dom/Document;
    move-result-object p3

    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    .line 1045
    .local p3, name:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Lorg/w3c/dom/DOMException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result p3

    .line 1048
    .local p3, i:I
    const/16 p5, 0x0

    .local p5, j:I
    move/from16 v2, p5

    .end local p5           #j:I
    .local v2, j:I
    move/from16 p6, v17

    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v17           #id:I
    .local p6, id:I
    :goto_3
    move v0, v2

    move/from16 v1, p3

    if-ge v0, v1, :cond_19

    .line 1050
    :try_start_9
    new-instance v6, Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-direct {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;-><init>()V

    .line 1051
    .local v6, sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p5

    .line 1053
    .local p5, nos1:Lorg/w3c/dom/Node;
    invoke-interface/range {p5 .. p5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1055
    .local v4, nodes2:Lorg/w3c/dom/NodeList;
    const/16 p5, 0x0

    .local p5, k:I
    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move/from16 v0, p5

    move v1, v5

    if-ge v0, v1, :cond_17

    .line 1057
    move-object v0, v4

    move/from16 v1, p5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1059
    .local v5, nos2:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "subcategoryid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1060
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryId(Ljava/lang/String;)V

    .line 1062
    :cond_d
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "subcategoryname"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1063
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryName(Ljava/lang/String;)V

    .line 1065
    :cond_e
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "spcontentid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1066
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPContentId(Ljava/lang/String;)V

    .line 1068
    :cond_f
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "contentname"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1069
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setContentName(Ljava/lang/String;)V

    .line 1071
    :cond_10
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "coverpicuri"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1072
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setCoverPicUri(Ljava/lang/String;)V

    .line 1074
    :cond_11
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "isfree"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1075
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setIsFree(Ljava/lang/String;)V

    .line 1077
    :cond_12
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "paid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1078
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setPaid(Ljava/lang/String;)V

    .line 1080
    :cond_13
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tag1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1081
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag1(Ljava/lang/String;)V

    .line 1083
    :cond_14
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tag2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1084
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag2(Ljava/lang/String;)V

    .line 1086
    :cond_15
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "osset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1087
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .end local v5           #nos2:Lorg/w3c/dom/Node;
    invoke-virtual {v6, v5}, Lcom/asus/reader/vibe2/SubcategoryContents;->setOSSet(Ljava/lang/String;)V

    .line 1055
    :cond_16
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_4

    .line 1090
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategory()Ljava/lang/String;

    move-result-object p5

    .end local p5           #k:I
    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategory(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategoryId()Ljava/lang/String;

    move-result-object p5

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategoryId(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v6, v7}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPName(Ljava/lang/String;)V

    .line 1093
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTotalCount(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object p5

    .line 1095
    .local p5, subId:Ljava/lang/String;
    if-eqz p5, :cond_18

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    .end local v4           #nodes2:Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_1a

    .line 1096
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/Subcategory;->getSubcategoryId()Ljava/lang/String;

    move-result-object p5

    move-object/from16 v4, p5

    .line 1097
    .end local p5           #subId:Ljava/lang/String;
    .local v4, subId:Ljava/lang/String;
    :goto_5
    const/16 p5, 0x10

    move/from16 v0, p5

    new-array v0, v0, [Ljava/lang/Object;

    move-object v5, v0
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_22
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Lorg/w3c/dom/DOMException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    const/4 v8, 0x0

    add-int/lit8 p5, p6, 0x1

    .end local p6           #id:I
    .local p5, id:I
    :try_start_a
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, v5, v8

    const/16 p6, 0x1

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, p6

    const/16 p6, 0x2

    aput-object v4, v5, p6

    const/16 p6, 0x3

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryName()Ljava/lang/String;

    move-result-object v4

    .end local v4           #subId:Ljava/lang/String;
    aput-object v4, v5, p6

    const/16 p6, 0x4

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0x5

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0x6

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getCoverPicUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0x7

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getIsFree()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0x8

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getPaid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0x9

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xa

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag2()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xb

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getOSSet()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xc

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xd

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xe

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTotalCount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, p6

    const/16 p6, 0xf

    aput-object p4, v5, p6

    move-object/from16 v0, p7

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->addRow([Ljava/lang/Object;)V
    :try_end_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_23
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Lorg/w3c/dom/DOMException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1048
    add-int/lit8 p6, v2, 0x1

    .end local v2           #j:I
    .local p6, j:I
    move/from16 v2, p6

    .end local p6           #j:I
    .restart local v2       #j:I
    move/from16 p6, p5

    .end local p5           #id:I
    .local p6, id:I
    goto/16 :goto_3

    .line 1103
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p2, buf:[B
    .local p3, count:I
    .local p5, contenttype:Ljava/lang/String;
    .local p6, subscribed:Ljava/lang/String;
    :catch_0
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1104
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 1105
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1106
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, buf:[B
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p5       #contenttype:Ljava/lang/String;
    .restart local p6       #subscribed:Ljava/lang/String;
    :catch_1
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1107
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Lorg/xml/sax/SAXException;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 1108
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1109
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, buf:[B
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p5       #contenttype:Ljava/lang/String;
    .restart local p6       #subscribed:Ljava/lang/String;
    :catch_2
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1110
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Ljava/lang/NullPointerException;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1111
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1112
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, buf:[B
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p5       #contenttype:Ljava/lang/String;
    .restart local p6       #subscribed:Ljava/lang/String;
    :catch_3
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1113
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Ljava/io/IOException;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1114
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1115
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, buf:[B
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p5       #contenttype:Ljava/lang/String;
    .restart local p6       #subscribed:Ljava/lang/String;
    :catch_4
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1116
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Lorg/w3c/dom/DOMException;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    .line 1117
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1118
    .restart local v7       #firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p0, info:Lcom/asus/reader/vibe2/ApplicationInfo;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, buf:[B
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p5       #contenttype:Ljava/lang/String;
    .restart local p6       #subscribed:Ljava/lang/String;
    :catch_5
    move-exception p0

    move/from16 p1, p3

    .end local p3           #count:I
    .local p1, count:I
    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    move-object/from16 v20, p2

    .end local p2           #buf:[B
    .local v20, buf:[B
    move-object/from16 p2, p0

    move-object/from16 p0, v20

    .line 1119
    .end local v7           #firstcontent:Ljava/lang/String;
    .end local v8           #lastcontent:Ljava/lang/String;
    .end local v20           #buf:[B
    .end local p5           #contenttype:Ljava/lang/String;
    .end local p6           #subscribed:Ljava/lang/String;
    .local p0, buf:[B
    .local p2, e:Ljava/lang/Exception;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1120
    const/16 p2, 0x0

    move-object/from16 v20, p4

    .end local p4           #spname:Ljava/lang/String;
    .local v20, spname:Ljava/lang/String;
    move-object/from16 p4, p2

    move/from16 p2, p3

    .end local p3           #id:I
    .local p2, id:I
    move-object/from16 p3, v20

    .end local v20           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    goto/16 :goto_2

    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .local v7, spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p6, id:I
    :cond_19
    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p3, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p3, spname:Ljava/lang/String;
    move-object/from16 p4, p7

    move/from16 p2, p6

    .line 1124
    .end local p6           #id:I
    .local p2, id:I
    goto/16 :goto_2

    .line 1118
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local p1           #count:I
    .end local p2           #id:I
    .end local p4           #searchkey:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_6
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto :goto_b

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_7
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto :goto_b

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .local p2, count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_8
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto :goto_b

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_9
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto :goto_b

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_a
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto :goto_b

    .line 1115
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .end local p1           #count:I
    .end local p4           #spname:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_b
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .restart local p4       #spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto :goto_a

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_c
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto :goto_a

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_d
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_a

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_e
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_a

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_f
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_a

    .line 1112
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .end local p1           #count:I
    .end local p4           #spname:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_10
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .restart local p4       #spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_9

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_11
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_9

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_12
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_9

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_13
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_9

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_14
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_9

    .line 1109
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .end local p1           #count:I
    .end local p4           #spname:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_15
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .restart local p4       #spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_8

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_16
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_8

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_17
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_8

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_18
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_8

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_19
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_8

    .line 1106
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .end local p1           #count:I
    .end local p4           #spname:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_1a
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .restart local p4       #spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_7

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_1b
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_7

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_1c
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_7

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_1d
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_7

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_1e
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_7

    .line 1103
    .end local v2           #j:I
    .end local v3           #nodes:Lorg/w3c/dom/NodeList;
    .end local v6           #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .end local p1           #count:I
    .end local p4           #spname:Ljava/lang/String;
    .local v7, firstcontent:Ljava/lang/String;
    .restart local v8       #lastcontent:Ljava/lang/String;
    .restart local v17       #id:I
    .restart local v19       #spname:Ljava/lang/String;
    .local p3, count:I
    :catch_1f
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v19

    .end local v19           #spname:Ljava/lang/String;
    .restart local p4       #spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_6

    .end local p1           #count:I
    .local v7, spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p3, count:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, doc:Lorg/w3c/dom/Document;
    :catch_20
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p1, p3

    .end local p3           #count:I
    .restart local p1       #count:I
    move/from16 p3, v17

    .end local v17           #id:I
    .local p3, id:I
    goto/16 :goto_6

    .end local p3           #id:I
    .end local p5           #doc:Lorg/w3c/dom/Document;
    .restart local v7       #spname:Ljava/lang/String;
    .restart local v17       #id:I
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p4, searchkey:Ljava/lang/String;
    :catch_21
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, v17

    .end local v17           #id:I
    .restart local p3       #id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_6

    .end local v8           #lastcontent:Ljava/lang/String;
    .restart local v2       #j:I
    .restart local v3       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .restart local p6       #id:I
    :catch_22
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p6

    .end local p6           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_6

    .restart local v6       #sc:Lcom/asus/reader/vibe2/SubcategoryContents;
    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, id:I
    :catch_23
    move-exception p1

    move-object/from16 p4, v7

    .end local v7           #spname:Ljava/lang/String;
    .local p4, spname:Ljava/lang/String;
    move/from16 p3, p5

    .end local p5           #id:I
    .local p3, id:I
    move-object/from16 v20, p1

    move/from16 p1, p2

    .end local p2           #count:I
    .local p1, count:I
    move-object/from16 p2, v20

    goto/16 :goto_6

    .restart local v7       #spname:Ljava/lang/String;
    .local p1, sub:Lcom/asus/reader/vibe2/Subcategory;
    .restart local p2       #count:I
    .local p3, i:I
    .local p4, searchkey:Ljava/lang/String;
    .local p5, subId:Ljava/lang/String;
    .restart local p6       #id:I
    :cond_1a
    move-object/from16 v4, p5

    .end local p5           #subId:Ljava/lang/String;
    .restart local v4       #subId:Ljava/lang/String;
    goto/16 :goto_5
.end method


# virtual methods
.method public callAuthorization(Lcom/asus/reader/vibe2/ApplicationInfo;)Ljava/util/List;
    .locals 45
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/reader/vibe2/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/MainCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v25, lMC:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/MainCategory;>;"
    const/16 v27, 0x0

    .line 46
    .local v27, mccount:I
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    const-string v2, ""

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setUserName(Ljava/lang/String;)V

    .line 49
    :cond_0
    const/4 v11, 0x0

    .line 54
    .local v11, buf:[B
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_vibeauth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getClientAppid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getProductname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getOSSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/asus/reader/vibe2/VibeAPIBase;->Authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 58
    if-nez v11, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 304
    :goto_0
    return-object v2

    .line 60
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 62
    .local v16, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 63
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 64
    .local v12, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 66
    .local v14, doc:Lorg/w3c/dom/Document;
    const-string v2, "errorcode"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 67
    .local v30, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 69
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    .line 70
    .local v34, nos:Lorg/w3c/dom/Node;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v43

    .line 71
    .local v43, status:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/asus/reader/vibe2/VibeUtil;->checkErrorCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    .end local v34           #nos:Lorg/w3c/dom/Node;
    .end local v43           #status:Ljava/lang/String;
    :cond_2
    const-string v2, "vibeauthresp"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 81
    const-string v2, "authkey"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 82
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 84
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setAuthkey(Ljava/lang/String;)V

    .line 93
    const-string v2, "headermode"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 94
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setHeaderMode(Ljava/lang/String;)V

    .line 106
    const-string v2, "orderprocessurl"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 107
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setOrderProcessUrl(Ljava/lang/String;)V

    .line 119
    const-string v2, "maincategorycount"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 120
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 123
    if-nez v27, :cond_6

    .line 124
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 89
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: AuthKey Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 102
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: headermode Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 115
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: orderprocessurl Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 131
    :cond_6
    const-string v2, "maincategorycontent"

    invoke-interface {v14, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 132
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 135
    .local v17, i:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 137
    new-instance v26, Lcom/asus/reader/vibe2/MainCategory;

    invoke-direct/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;-><init>()V

    .line 138
    .local v26, mc:Lcom/asus/reader/vibe2/MainCategory;
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    .line 140
    .local v35, nos1:Lorg/w3c/dom/Node;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 142
    .local v31, nodes2:Lorg/w3c/dom/NodeList;
    const/16 v23, 0x0

    .local v23, k:I
    :goto_2
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v23

    move v1, v2

    if-ge v0, v1, :cond_1a

    .line 144
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    .line 146
    .local v36, nos2:Lorg/w3c/dom/Node;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maincategoryid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 147
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 149
    .local v18, id:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setMainCategoryId(Ljava/lang/String;)V

    .line 153
    .end local v18           #id:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maincategoryname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 155
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v28

    .line 157
    .local v28, name1:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setMainCategoryName(Ljava/lang/String;)V

    .line 161
    .end local v28           #name1:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maincategory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 163
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v29

    .line 165
    .local v29, nameL:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setMainCategoryLocale(Ljava/lang/String;)V

    .line 169
    .end local v29           #nameL:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maincategoryimgurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 171
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    .line 172
    .local v19, imgurl:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setMainCategoryImgUrl(Ljava/lang/String;)V

    .line 180
    .end local v19           #imgurl:Ljava/lang/String;
    :cond_a
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "indivsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 183
    new-instance v40, Lcom/asus/reader/vibe2/ServiceProvider;

    invoke-direct/range {v40 .. v40}, Lcom/asus/reader/vibe2/ServiceProvider;-><init>()V

    .line 184
    .local v40, sp:Lcom/asus/reader/vibe2/ServiceProvider;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 186
    .local v32, nodes3:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    .line 192
    .local v41, splength:I
    const/16 v20, 0x0

    .local v20, in:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v41

    if-ge v0, v1, :cond_18

    .line 195
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    .line 198
    .local v37, nos3:Lorg/w3c/dom/Node;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "indivspname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 200
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v42

    .line 201
    .local v42, spname:Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ServiceProvider;->setSPName(Ljava/lang/String;)V

    .line 205
    .end local v42           #spname:Ljava/lang/String;
    :cond_b
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "indivspindex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 207
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    .line 208
    .local v21, index:Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ServiceProvider;->setSPIndex(Ljava/lang/String;)V

    .line 212
    .end local v21           #index:Ljava/lang/String;
    :cond_c
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "indivspcount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 214
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, count:Ljava/lang/String;
    move-object/from16 v0, v40

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ServiceProvider;->setSPSubcategoryCount(Ljava/lang/String;)V

    .line 219
    .end local v13           #count:Ljava/lang/String;
    :cond_d
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subcategorycontent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 221
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 223
    .local v33, nodes4:Lorg/w3c/dom/NodeList;
    new-instance v44, Lcom/asus/reader/vibe2/Subcategory;

    invoke-direct/range {v44 .. v44}, Lcom/asus/reader/vibe2/Subcategory;-><init>()V

    .line 226
    .local v44, sub:Lcom/asus/reader/vibe2/Subcategory;
    const/16 v24, 0x0

    .local v24, l:I
    :goto_4
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v24

    move v1, v2

    if-ge v0, v1, :cond_16

    .line 228
    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    .line 230
    .local v38, nos4:Lorg/w3c/dom/Node;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subcategoryid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 231
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setSubcategoryId(Ljava/lang/String;)V

    .line 233
    :cond_e
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subcategoryname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 236
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<![CDATA["

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]]>"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v39

    .line 237
    .local v39, s:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setSubcategoryName(Ljava/lang/String;)V

    .line 240
    .end local v39           #s:Ljava/lang/String;
    :cond_f
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subcategoryimgurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 241
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setSubcategoryImgUrl(Ljava/lang/String;)V

    .line 243
    :cond_10
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subcategoryurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 244
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setSubcategoryUrl(Ljava/lang/String;)V

    .line 246
    :cond_11
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contenturl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 247
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setContentUrl(Ljava/lang/String;)V

    .line 249
    :cond_12
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentdetailurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 250
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setContentDetailUrl(Ljava/lang/String;)V

    .line 252
    :cond_13
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recommendurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 253
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setRecommendUrl(Ljava/lang/String;)V

    .line 255
    :cond_14
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageurl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 256
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setPackageUrl(Ljava/lang/String;)V

    .line 226
    :cond_15
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 260
    .end local v38           #nos4:Lorg/w3c/dom/Node;
    :cond_16
    invoke-virtual/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setMainCategoryId(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Subcategory;->setMainCategory(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/ServiceProvider;->setSubcategoryAdd(Lcom/asus/reader/vibe2/Subcategory;)V

    .line 192
    .end local v24           #l:I
    .end local v33           #nodes4:Lorg/w3c/dom/NodeList;
    .end local v44           #sub:Lcom/asus/reader/vibe2/Subcategory;
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 272
    .end local v37           #nos3:Lorg/w3c/dom/Node;
    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setServiceProviderAdd(Lcom/asus/reader/vibe2/ServiceProvider;)V

    .line 142
    .end local v20           #in:I
    .end local v32           #nodes3:Lorg/w3c/dom/NodeList;
    .end local v40           #sp:Lcom/asus/reader/vibe2/ServiceProvider;
    .end local v41           #splength:I
    :cond_19
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 278
    .end local v36           #nos2:Lorg/w3c/dom/Node;
    :cond_1a
    invoke-virtual/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 280
    invoke-virtual/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/MainCategory;->setMainCategoryLocale(Ljava/lang/String;)V

    .line 281
    const-string v2, "Vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fill Locale with Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1b
    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 135
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 290
    .end local v12           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v14           #doc:Lorg/w3c/dom/Document;
    .end local v16           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17           #i:I
    .end local v22           #j:I
    .end local v23           #k:I
    .end local v26           #mc:Lcom/asus/reader/vibe2/MainCategory;
    .end local v30           #nodes:Lorg/w3c/dom/NodeList;
    .end local v31           #nodes2:Lorg/w3c/dom/NodeList;
    .end local v35           #nos1:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    move-object v15, v2

    .line 291
    .local v15, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v15}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .end local v15           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1c
    :goto_5
    move-object/from16 v2, v25

    .line 304
    goto/16 :goto_0

    .line 292
    :catch_1
    move-exception v2

    move-object v15, v2

    .line 293
    .local v15, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_5

    .line 294
    .end local v15           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    move-object v15, v2

    .line 295
    .local v15, e:Ljava/lang/NullPointerException;
    invoke-virtual {v15}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 296
    .end local v15           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    move-object v15, v2

    .line 297
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 298
    .end local v15           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    move-object v15, v2

    .line 299
    .local v15, e:Lorg/w3c/dom/DOMException;
    invoke-virtual {v15}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    goto :goto_5

    .line 300
    .end local v15           #e:Lorg/w3c/dom/DOMException;
    :catch_5
    move-exception v2

    move-object v15, v2

    .line 301
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public callLoadPickedContent(Lcom/asus/reader/vibe2/ApplicationInfo;Ljava/lang/String;Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;
    .locals 29
    .parameter "info"
    .parameter "contentid"
    .parameter "sub"

    .prologue
    .line 1157
    new-instance v13, Lcom/asus/reader/vibe2/Content;

    invoke-direct {v13}, Lcom/asus/reader/vibe2/Content;-><init>()V

    .line 1162
    .local v13, book:Lcom/asus/reader/vibe2/Content;
    const/4 v14, 0x0

    .line 1166
    .local v14, buf:[B
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_getcontentdetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getHeaderMode()Z

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/asus/reader/vibe2/VibeAPIBase;->LoadPickedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v14

    .line 1170
    if-nez v14, :cond_0

    .line 1171
    const/4 v2, 0x0

    .line 1344
    .end local p0
    :goto_0
    return-object v2

    .line 1173
    .restart local p0
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    .line 1175
    .local v18, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 1176
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    .line 1177
    .local v15, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v15, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v16

    .line 1179
    .local v16, doc:Lorg/w3c/dom/Document;
    const-string v2, "errorcode"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1180
    .local v23, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1182
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 1183
    .local v25, nos:Lorg/w3c/dom/Node;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v28

    .line 1184
    .local v28, status:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/asus/reader/vibe2/VibeUtil;->checkErrorCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1186
    const/4 v2, 0x0

    goto :goto_0

    .line 1191
    .end local v25           #nos:Lorg/w3c/dom/Node;
    .end local v28           #status:Ljava/lang/String;
    :cond_1
    const-string v2, "subcategoryname"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1192
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1194
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setSubcategoryName(Ljava/lang/String;)V

    .line 1202
    const-string v2, "contentname"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1203
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1205
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setContentName(Ljava/lang/String;)V

    .line 1213
    const-string v2, "coverpicuri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1214
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 1216
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setCoverPicUri(Ljava/lang/String;)V

    .line 1224
    const-string v2, "previewuri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1225
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1227
    const-string v2, "previewuri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v2, "mimetype"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1228
    .local v22, name:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1229
    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Content;->setPreviewMimetype(Ljava/lang/String;)V

    .line 1230
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setPreviewUri(Ljava/lang/String;)V

    .line 1233
    .end local v22           #name:Ljava/lang/String;
    :cond_2
    const-string v2, "premiumuri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1234
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1236
    const-string v2, "premiumuri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v2, "mimetype"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1237
    .restart local v22       #name:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1238
    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Content;->setPremiumMimetype(Ljava/lang/String;)V

    .line 1239
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setPremiumUri(Ljava/lang/String;)V

    .line 1242
    .end local v22           #name:Ljava/lang/String;
    :cond_3
    const-string v2, "downloaduri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1243
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1245
    const-string v2, "downloaduri"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v2, "mimetype"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1246
    .restart local v22       #name:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1247
    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Content;->setDownloadMimetype(Ljava/lang/String;)V

    .line 1248
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setDownloadUri(Ljava/lang/String;)V

    .line 1251
    .end local v22           #name:Ljava/lang/String;
    :cond_4
    const-string v2, "isfree"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1252
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1254
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setIsFree(Ljava/lang/String;)V

    .line 1257
    :cond_5
    const-string v2, "paid"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1258
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1260
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setPaid(Ljava/lang/String;)V

    .line 1263
    :cond_6
    const-string v2, "tag1"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1264
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1266
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setTag1(Ljava/lang/String;)V

    .line 1269
    :cond_7
    const-string v2, "tag2"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1270
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1272
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setTag2(Ljava/lang/String;)V

    .line 1275
    :cond_8
    const-string v2, "osset"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1276
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1278
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setOSSet(Ljava/lang/String;)V

    .line 1282
    :cond_9
    const-string v2, "attr"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1290
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 1293
    .local v19, i:I
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 1295
    new-instance v12, Lcom/asus/reader/vibe2/Attribute;

    invoke-direct {v12}, Lcom/asus/reader/vibe2/Attribute;-><init>()V

    .line 1296
    .local v12, at:Lcom/asus/reader/vibe2/Attribute;
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 1299
    .local v26, nos1:Lorg/w3c/dom/Node;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 1301
    .local v24, nodes2:Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .local v21, k:I
    :goto_2
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v21

    move v1, v2

    if-ge v0, v1, :cond_f

    .line 1303
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 1305
    .local v27, nos2:Lorg/w3c/dom/Node;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attrname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1306
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/asus/reader/vibe2/Attribute;->setName(Ljava/lang/String;)V

    .line 1308
    :cond_a
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attrvalue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1309
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/asus/reader/vibe2/Attribute;->setValue(Ljava/lang/String;)V

    .line 1301
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1198
    .end local v12           #at:Lcom/asus/reader/vibe2/Attribute;
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v21           #k:I
    .end local v24           #nodes2:Lorg/w3c/dom/NodeList;
    .end local v26           #nos1:Lorg/w3c/dom/Node;
    .end local v27           #nos2:Lorg/w3c/dom/Node;
    .restart local p0
    :cond_c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: subcategoryname Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1209
    :cond_d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: contentname Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1210
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1220
    :cond_e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: coverpicuri Miss!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1221
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1313
    .end local p0
    .restart local v12       #at:Lcom/asus/reader/vibe2/Attribute;
    .restart local v19       #i:I
    .restart local v20       #j:I
    .restart local v21       #k:I
    .restart local v24       #nodes2:Lorg/w3c/dom/NodeList;
    .restart local v26       #nos1:Lorg/w3c/dom/Node;
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setMainCategory(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setMainCategoryId(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setSubcategoryId(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p3 .. p3}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/asus/reader/vibe2/Content;->setSPContentId(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v13, v12}, Lcom/asus/reader/vibe2/Content;->setAttributeAdd(Lcom/asus/reader/vibe2/Attribute;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1293
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1324
    .end local v12           #at:Lcom/asus/reader/vibe2/Attribute;
    .end local v15           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v16           #doc:Lorg/w3c/dom/Document;
    .end local v18           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v21           #k:I
    .end local v23           #nodes:Lorg/w3c/dom/NodeList;
    .end local v24           #nodes2:Lorg/w3c/dom/NodeList;
    .end local v26           #nos1:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    move-object/from16 v17, v2

    .line 1325
    .local v17, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 1326
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1327
    .end local v17           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    move-object/from16 v17, v2

    .line 1328
    .local v17, e:Lorg/xml/sax/SAXException;
    invoke-virtual/range {v17 .. v17}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 1329
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1330
    .end local v17           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    move-object/from16 v17, v2

    .line 1331
    .local v17, e:Ljava/lang/NullPointerException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1332
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1333
    .end local v17           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    move-object/from16 v17, v2

    .line 1334
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 1335
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1336
    .end local v17           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    move-object/from16 v17, v2

    .line 1337
    .local v17, e:Lorg/w3c/dom/DOMException;
    invoke-virtual/range {v17 .. v17}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    .line 1338
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1339
    .end local v17           #e:Lorg/w3c/dom/DOMException;
    :catch_5
    move-exception v2

    move-object/from16 v17, v2

    .line 1340
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 1341
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16       #doc:Lorg/w3c/dom/Document;
    .restart local v18       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19       #i:I
    .restart local v20       #j:I
    .restart local v23       #nodes:Lorg/w3c/dom/NodeList;
    :cond_10
    move-object v2, v13

    .line 1344
    goto/16 :goto_0
.end method

.method public callLoadPickedPackage(Lcom/asus/reader/vibe2/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/reader/vibe2/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_getpackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getHeaderMode()Z

    move-result v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v2 .. v11}, Lcom/asus/reader/vibe2/VibeAPIBase;->LoadPickedPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v2

    .line 1487
    if-nez v2, :cond_0

    .line 1489
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error: no data available"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1490
    const/4 v2, 0x0

    .line 1599
    :goto_0
    return-object v2

    .line 1494
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1496
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 1497
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1498
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 1500
    const-string v3, "errorcode"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1501
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1503
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1504
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 1505
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeUtil;->checkErrorCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1507
    const/4 v2, 0x0

    goto :goto_0

    .line 1510
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getpackageresponse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getpackageresponse"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v5, "version"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    const-string v3, "package"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1515
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 1518
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_c

    .line 1520
    new-instance v5, Lcom/asus/reader/vibe2/Package;

    invoke-direct {v5}, Lcom/asus/reader/vibe2/Package;-><init>()V

    .line 1521
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1525
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1526
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 1528
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1530
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "packageid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1531
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setPackageId(Ljava/lang/String;)V

    .line 1533
    :cond_2
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "paymenturi"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1534
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setPaymentUri(Ljava/lang/String;)V

    .line 1536
    :cond_3
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "packagedesc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1537
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setPackageDesc(Ljava/lang/String;)V

    .line 1539
    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "price"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1540
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setPrice(Ljava/lang/String;)V

    .line 1542
    :cond_5
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "currency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1543
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setCurrency(Ljava/lang/String;)V

    .line 1548
    :cond_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "subcategory"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1550
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1553
    new-instance v9, Lcom/asus/reader/vibe2/SubcategorySet;

    invoke-direct {v9}, Lcom/asus/reader/vibe2/SubcategorySet;-><init>()V

    .line 1555
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 1557
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 1559
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "subcategoryid"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1560
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/asus/reader/vibe2/SubcategorySet;->setSubcategoryId(Ljava/lang/String;)V

    .line 1562
    :cond_7
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "subcategoryname"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1563
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/asus/reader/vibe2/SubcategorySet;->setSubcategoryName(Ljava/lang/String;)V

    .line 1555
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1567
    :cond_9
    invoke-virtual {v5, v9}, Lcom/asus/reader/vibe2/Package;->setSubcategorySetAdd(Lcom/asus/reader/vibe2/SubcategorySet;)V

    .line 1526
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1577
    :cond_b
    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/Package;->setMainCategoryId(Ljava/lang/String;)V

    .line 1579
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1518
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1585
    :catch_0
    move-exception v2

    .line 1586
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :cond_c
    :goto_4
    move-object v2, v12

    .line 1599
    goto/16 :goto_0

    .line 1587
    :catch_1
    move-exception v2

    .line 1588
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_4

    .line 1589
    :catch_2
    move-exception v2

    .line 1590
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 1591
    :catch_3
    move-exception v2

    .line 1592
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1593
    :catch_4
    move-exception v2

    .line 1594
    invoke-virtual {v2}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    goto :goto_4

    .line 1595
    :catch_5
    move-exception v2

    .line 1596
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public callOrderInfoProcess(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1610
    .line 1613
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getOrderProcessUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getVersion_orderinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getAuthkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getECaremeToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getPackageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getPaymentUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/asus/reader/vibe2/Package;->getPackageDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/asus/reader/vibe2/ApplicationInfo;->getHeaderMode()Z

    move-result v15

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-static/range {v0 .. v15}, Lcom/asus/reader/vibe2/VibeAPIBase;->OrderInfoProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 1618
    if-nez v0, :cond_0

    .line 1620
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "error: no data available"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1621
    const/4 v0, 0x0

    .line 1673
    :goto_0
    return-object v0

    .line 1624
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1628
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 1630
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1631
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1633
    const-string v1, "errorcode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1634
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1636
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1637
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 1638
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeUtil;->checkErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1640
    const/4 v0, 0x0

    goto :goto_0

    .line 1645
    :cond_1
    const-string v1, "orderopenurl"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1646
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1648
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1654
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "error: orderopenurl Miss!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1655
    const/4 v0, 0x0

    goto :goto_0

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 1673
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1661
    :catch_1
    move-exception v0

    .line 1662
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 1663
    :catch_2
    move-exception v0

    .line 1664
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1665
    :catch_3
    move-exception v0

    .line 1666
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1667
    :catch_4
    move-exception v0

    .line 1668
    invoke-virtual {v0}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    goto :goto_1

    .line 1669
    :catch_5
    move-exception v0

    .line 1670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
