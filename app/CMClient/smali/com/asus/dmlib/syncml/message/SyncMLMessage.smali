.class public Lcom/asus/dmlib/syncml/message/SyncMLMessage;
.super Ljava/lang/Object;
.source "SyncMLMessage.java"


# instance fields
.field private mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pTagName"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 21
    return-void
.end method

.method public static createMessage()Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 12

    .prologue
    .line 60
    new-instance v5, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    const-string v10, "SyncML"

    invoke-direct {v5, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    .line 61
    .local v5, root:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "xmlns"

    const-string v11, "SYNCML:SYNCML1.1"

    invoke-virtual {v5, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v10, "SyncHdr"

    invoke-virtual {v5, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v8

    .line 65
    .local v8, syncHdrElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "VerDTD"

    const-string v11, "1.1"

    invoke-virtual {v8, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v10, "VerProto"

    const-string v11, "DM/1.1"

    invoke-virtual {v8, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v10, "SessionID"

    const-string v11, "1"

    invoke-virtual {v8, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v10, "MsgID"

    const-string v11, "1"

    invoke-virtual {v8, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v10, "Target"

    invoke-virtual {v8, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v9

    .line 74
    .local v9, targetElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "Source"

    invoke-virtual {v8, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v6

    .line 75
    .local v6, srcElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "LocURI"

    const-string v11, "dev"

    invoke-virtual {v6, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v10, "Meta"

    invoke-virtual {v8, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v3

    .line 91
    .local v3, metaElement2:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "MaxMsgSize"

    invoke-virtual {v3, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v1

    .line 92
    .local v1, maxMsgSize:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-virtual {v1, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v10, "5000"

    invoke-virtual {v1, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setContent(Ljava/lang/String;)V

    .line 95
    const-string v10, "MaxObjSize"

    invoke-virtual {v3, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v2

    .line 96
    .local v2, maxObjSizeElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-virtual {v2, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v10, "25000"

    invoke-virtual {v2, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setContent(Ljava/lang/String;)V

    .line 101
    const-string v10, "SyncBody"

    invoke-virtual {v5, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v7

    .line 103
    .local v7, syncBodyElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "Alert"

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    .line 104
    .local v0, alertElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "CmdID"

    const-string v11, "1"

    invoke-virtual {v0, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v10, "Data"

    const-string v11, "1201"

    invoke-virtual {v0, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v10, "Replace"

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v4

    .line 108
    .local v4, replaceElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const-string v10, "CmdID"

    const-string v11, "2"

    invoke-virtual {v4, v10, v11}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v10, "./DevInfo/Lang"

    const-string v11, "en-us"

    invoke-static {v10, v11}, Lcom/asus/dmlib/syncml/message/ItemElement;->createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 111
    const-string v10, "./DevInfo/DmV"

    const-string v11, "4.0"

    invoke-static {v10, v11}, Lcom/asus/dmlib/syncml/message/ItemElement;->createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 112
    const-string v10, "./DevInfo/Mod"

    const-string v11, "scts devman"

    invoke-static {v10, v11}, Lcom/asus/dmlib/syncml/message/ItemElement;->createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 113
    const-string v10, "./DevInfo/Man"

    const-string v11, "SyncML"

    invoke-static {v10, v11}, Lcom/asus/dmlib/syncml/message/ItemElement;->createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 114
    const-string v10, "./DevInfo/DevId"

    const-string v11, "dev"

    invoke-static {v10, v11}, Lcom/asus/dmlib/syncml/message/ItemElement;->createItemElement(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/ItemElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 116
    const-string v10, "Final"

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->addChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 119
    return-object v5
.end method


# virtual methods
.method public getContentElement()Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentElement(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 0
    .parameter "pDMMsgElement"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 37
    return-void
.end method

.method public setContentElement(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 32
    new-instance v0, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMessage;->mContentElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    .line 33
    return-void
.end method
