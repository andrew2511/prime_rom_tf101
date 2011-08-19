.class public Lcom/asus/dmlib/syncml/message/command/Get;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Get.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Get"


# instance fields
.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLang:Ljava/lang/String;

.field private mResultItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 2
    .parameter "pAppCommandRef"
    .parameter "pItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new Get if any of the parameters is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mAppCommandRef:Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p2}, Lcom/asus/dmlib/syncml/message/command/Get;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    .line 41
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 57
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 58
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 59
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 61
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 101
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 105
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 64
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 103
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Meta"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    goto :goto_0

    .line 68
    :cond_4
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :sswitch_1
    const-string v6, "Get"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :sswitch_2
    const/4 v5, 0x0

    .line 80
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_6

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 92
    :cond_5
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 93
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_6
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_5

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    .line 88
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapExtensionData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_2

    .line 94
    :cond_7
    const-string v6, "Lang"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 20
    .parameter "syncml"

    .prologue
    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v4

    .line 110
    .local v4, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    const/4 v14, 0x0

    .line 111
    .local v14, status:Lcom/asus/dmlib/syncml/message/management/Status;
    new-instance v13, Lcom/asus/dmlib/syncml/message/command/Results;

    const-string v17, "-1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mMsgID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/syncml/message/command/Results;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v13, results:Lcom/asus/dmlib/syncml/message/command/Results;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 114
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    .line 118
    :cond_0
    :try_start_0
    new-instance v15, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v17, 0xc8

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    .end local v14           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .local v15, status:Lcom/asus/dmlib/syncml/message/management/Status;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 124
    .local v8, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, locURI:Ljava/lang/String;
    const-string v17, "Get"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "============locURI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v16

    .line 128
    .local v16, tree:Lcom/asus/dmlib/tree/DMTree;
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v11

    .line 129
    .local v11, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v11, :cond_6

    .line 130
    new-instance v12, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v12}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 131
    .local v12, resultItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v10, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v10}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>()V

    .line 132
    .local v10, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    invoke-virtual {v11}, Lcom/asus/dmlib/tree/DMNode;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, format:Ljava/lang/String;
    move-object v0, v11

    instance-of v0, v0, Lcom/asus/dmlib/tree/Leaf;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 134
    if-eqz v6, :cond_2

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 135
    :cond_2
    const-string v6, "chr"

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {v10, v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setFormat(Ljava/lang/String;)V

    .line 142
    new-instance v17, Lcom/asus/dmlib/syncml/message/common/Source;

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 143
    invoke-virtual {v12, v10}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 144
    invoke-virtual {v11}, Lcom/asus/dmlib/tree/DMNode;->onRead()Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Get;->mResultItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/command/Results;->addItems(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 159
    .end local v6           #format:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v9           #locURI:Ljava/lang/String;
    .end local v10           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v11           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v12           #resultItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v16           #tree:Lcom/asus/dmlib/tree/DMTree;
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    move-object v14, v15

    .line 160
    .end local v15           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .local v5, e:Lcom/asus/dmlib/vdm/VdmException;
    .restart local v14       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :goto_2
    const/16 v17, 0x1f4

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 161
    invoke-static {v5}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 170
    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    :goto_3
    invoke-virtual {v4, v14}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 172
    invoke-virtual {v14}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 173
    invoke-virtual {v4, v13}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 174
    :cond_4
    return-void

    .line 137
    .end local v14           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v6       #format:Ljava/lang/String;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .restart local v9       #locURI:Ljava/lang/String;
    .restart local v10       #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .restart local v11       #node:Lcom/asus/dmlib/tree/DMNode;
    .restart local v12       #resultItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .restart local v15       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v16       #tree:Lcom/asus/dmlib/tree/DMTree;
    :cond_5
    :try_start_2
    move-object v0, v11

    instance-of v0, v0, Lcom/asus/dmlib/tree/Interior;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 138
    const-string v6, "node"
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 152
    .end local v6           #format:Ljava/lang/String;
    .end local v10           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v12           #resultItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_6
    const/16 v17, 0x194

    :try_start_3
    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v5

    .line 154
    .local v5, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-static {v5}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 162
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v9           #locURI:Ljava/lang/String;
    .end local v11           #node:Lcom/asus/dmlib/tree/DMNode;
    .end local v16           #tree:Lcom/asus/dmlib/tree/DMTree;
    :catch_2
    move-exception v17

    move-object/from16 v5, v17

    move-object v14, v15

    .line 163
    .end local v15           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v5       #e:Ljava/lang/IllegalArgumentException;
    .restart local v14       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :goto_4
    const/16 v17, 0x1f4

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 164
    invoke-static {v5}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v14           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v15       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_7
    move-object v14, v15

    .line 168
    .end local v15           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v14       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    goto :goto_3

    .line 165
    .end local v7           #i$:Ljava/util/Iterator;
    .restart local p1
    :catch_3
    move-exception v17

    move-object/from16 v5, v17

    .line 166
    .end local p1
    .local v5, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    :goto_5
    const/16 v17, 0x1f4

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 167
    invoke-static {v5}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 165
    .end local v5           #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    .end local v14           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v15       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :catch_4
    move-exception v17

    move-object/from16 v5, v17

    move-object v14, v15

    .end local v15           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v14       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    goto :goto_5

    .line 162
    .restart local p1
    :catch_5
    move-exception v17

    move-object/from16 v5, v17

    goto :goto_4

    .line 159
    :catch_6
    move-exception v17

    move-object/from16 v5, v17

    goto :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 1
    .parameter "contentType"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x3d

    const/4 v4, 0x1

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x53

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 231
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 235
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 243
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 246
    const/16 v3, 0x55

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 250
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 259
    :cond_3
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 260
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 261
    .local v2, temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1           #c:I
    .end local v2           #temp:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 264
    .restart local v1       #c:I
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Get>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "<Lang>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Lang>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_3
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 218
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Get;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_4
    const-string v2, "</Get>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
