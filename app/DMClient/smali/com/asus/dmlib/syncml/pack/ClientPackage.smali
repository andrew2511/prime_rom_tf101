.class public Lcom/asus/dmlib/syncml/pack/ClientPackage;
.super Lcom/asus/dmlib/syncml/pack/SyncMLPackage;
.source "ClientPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;
    }
.end annotation


# static fields
.field public static final DM_PROTOCOL_VERSION_1_2:Ljava/lang/String; = "DM/1.2"

.field public static final DM_VERSION_DTD:Ljava/lang/String; = "1.2"

.field private static final TAG:Ljava/lang/String; = "ClientPackage"

.field private static mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

.field private static mDevInfo:Lcom/asus/dmlib/mo/DevInfo;


# instance fields
.field private mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

.field private mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

.field private mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;)V
    .locals 1
    .parameter "initialCode"
    .parameter "dmAcc"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/dmlib/syncml/pack/ClientPackage;-><init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;[Ljava/lang/String;)V
    .locals 12
    .parameter "initialCode"
    .parameter "dmAcc"
    .parameter "extData"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/pack/SyncMLPackage;-><init>()V

    .line 39
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 88
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v7

    sput-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    .line 89
    invoke-static {}, Lcom/asus/dmlib/mo/DevInfo;->getInstance()Lcom/asus/dmlib/mo/DevInfo;

    move-result-object v7

    sput-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    .line 90
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    .line 93
    new-instance v3, Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-direct {v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;-><init>()V

    .line 95
    .local v3, hdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    const-string v7, "1.2"

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setVerDTD(Ljava/lang/String;)V

    .line 96
    const-string v7, "DM/1.2"

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setVerProto(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->createSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setSessionID(Ljava/lang/String;)V

    .line 98
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    sget-object v8, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v8}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 99
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Target;

    iget-object v8, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v8}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V

    .line 100
    const-string v7, "1"

    invoke-virtual {v3, v7}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setMsgID(Ljava/lang/String;)V

    .line 103
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmConfig;->getCharset()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v7, v8, v9}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->setCredToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncHdr;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_0
    new-instance v5, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v7, "MaxMsgSize"

    sget-object v8, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxMsgSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v5, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    const-string v7, "MaxObjSize"

    sget-object v8, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxObjSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setMetaData(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 116
    new-instance v1, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>()V

    .line 118
    .local v1, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-direct {v0}, Lcom/asus/dmlib/syncml/message/command/Alert;-><init>()V

    .line 120
    .local v0, alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    :try_start_1
    const-string v7, "1"

    invoke-virtual {v0, v7}, Lcom/asus/dmlib/syncml/message/command/Alert;->setCmdID(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :goto_1
    const/16 v7, 0x4b0

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->getIndex()I

    move-result v8

    if-ne v7, v8, :cond_3

    const/16 v7, 0x4b0

    :goto_2
    invoke-virtual {v0, v7}, Lcom/asus/dmlib/syncml/message/command/Alert;->setAlertCode(I)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 130
    new-instance v6, Lcom/asus/dmlib/syncml/message/command/Replace;

    invoke-direct {v6}, Lcom/asus/dmlib/syncml/message/command/Replace;-><init>()V

    .line 132
    .local v6, replace:Lcom/asus/dmlib/syncml/message/command/Replace;
    :try_start_2
    const-string v7, "2"

    invoke-virtual {v6, v7}, Lcom/asus/dmlib/syncml/message/command/Replace;->setCmdID(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_2 .. :try_end_2} :catch_3

    .line 137
    :goto_3
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 138
    .local v4, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Mod"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 139
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 140
    sget-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v7}, Lcom/asus/dmlib/mo/DevInfo;->getMod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 141
    const-string v7, "ClientPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDevInfo.getMod(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v9}, Lcom/asus/dmlib/mo/DevInfo;->getMod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 144
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 145
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Man"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 146
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 147
    sget-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v7}, Lcom/asus/dmlib/mo/DevInfo;->getMan()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 148
    const-string v7, "ClientPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDevInfo.getMan(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v9}, Lcom/asus/dmlib/mo/DevInfo;->getMan()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 151
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 152
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Lang"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 153
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 154
    sget-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v7}, Lcom/asus/dmlib/mo/DevInfo;->getLang()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 155
    const-string v7, "ClientPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDevInfo.getLang(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v9}, Lcom/asus/dmlib/mo/DevInfo;->getLang()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 158
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 159
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/DmV"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 160
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 161
    sget-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v7}, Lcom/asus/dmlib/mo/DevInfo;->getDmV()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 162
    const-string v7, "ClientPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDevInfo.getDmV(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v9}, Lcom/asus/dmlib/mo/DevInfo;->getDmV()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 165
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 166
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/DevId"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 167
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 168
    sget-object v7, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v7}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 169
    const-string v7, "ClientPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDevInfo.getDevId(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v9}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 173
    if-eqz p3, :cond_2

    .line 174
    const/4 v7, 0x0

    aget-object v7, p3, v7

    if-eqz v7, :cond_0

    .line 175
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 176
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Ext/C2DMRegID"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 177
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 178
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 182
    :cond_0
    const/4 v7, 0x1

    aget-object v7, p3, v7

    if-eqz v7, :cond_1

    .line 183
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 184
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Ext/C2DMRegAppName"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 185
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 186
    const/4 v7, 0x1

    aget-object v7, p3, v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 190
    :cond_1
    const/4 v7, 0x2

    aget-object v7, p3, v7

    if-eqz v7, :cond_2

    .line 191
    new-instance v4, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-direct {v4}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 192
    .restart local v4       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v7, Lcom/asus/dmlib/syncml/message/common/Source;

    const-string v8, "./DevInfo/Ext/VIBERegID"

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 193
    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v8, "Format"

    const-string v9, "chr"

    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 194
    const/4 v7, 0x2

    aget-object v7, p3, v7

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6, v4}, Lcom/asus/dmlib/syncml/message/command/Replace;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 199
    :cond_2
    invoke-virtual {v1, v6}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 200
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    .line 202
    new-instance v7, Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-direct {v7, v3, v1}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V

    iput-object v7, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 203
    return-void

    .line 104
    .end local v0           #alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    .end local v1           #body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    .end local v4           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v5           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v6           #replace:Lcom/asus/dmlib/syncml/message/command/Replace;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 105
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "ClientPackage"

    invoke-static {v7, v2}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 106
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 107
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "ClientPackage"

    invoke-static {v7, v2}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 121
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    .restart local v1       #body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    .restart local v5       #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 122
    .local v2, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    const-string v7, "ClientPackage"

    const-string v8, "It is impossible to reach this line"

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v2           #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    :cond_3
    const/16 v7, 0x4b1

    goto/16 :goto_2

    .line 133
    .restart local v6       #replace:Lcom/asus/dmlib/syncml/message/command/Replace;
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 134
    .restart local v2       #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    const-string v7, "ClientPackage"

    const-string v8, "It is impossible to reach this line"

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/pack/ServerPackage;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/dm/DMSession;)V
    .locals 9
    .parameter "servPack"
    .parameter "dmAcc"
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/pack/SyncMLPackage;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 59
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    .line 60
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v1

    sput-object v1, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    .line 61
    invoke-static {}, Lcom/asus/dmlib/mo/DevInfo;->getInstance()Lcom/asus/dmlib/mo/DevInfo;

    move-result-object v1

    sput-object v1, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    .line 62
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot construct a ServerPackage with null parameter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getResponseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v8

    .line 70
    .local v8, clientHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    new-instance v7, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>()V

    .line 71
    .local v7, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    new-instance v1, Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-direct {v1, v8, v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V

    iput-object v1, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 73
    new-instance v0, Lcom/asus/dmlib/syncml/message/management/Status;

    const-string v1, "-1"

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/ServerPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "SyncHdr"

    const/16 v5, 0xc8

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    .local v0, status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addSourceRef(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 80
    return-void
.end method

.method private createSessionID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x406fe00000000000L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 211
    .local v0, sesId:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResponseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    .locals 7
    .parameter "sessionID"
    .parameter "servAddr"

    .prologue
    .line 329
    invoke-static {}, Lcom/asus/dmlib/mo/DevInfo;->getInstance()Lcom/asus/dmlib/mo/DevInfo;

    move-result-object v0

    .line 331
    .local v0, devInfo:Lcom/asus/dmlib/mo/DevInfo;
    new-instance v1, Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-direct {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;-><init>()V

    .line 332
    .local v1, hdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    const-string v3, "1.2"

    invoke-virtual {v1, v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setVerDTD(Ljava/lang/String;)V

    .line 333
    const-string v3, "DM/1.2"

    invoke-virtual {v1, v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setVerProto(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setSessionID(Ljava/lang/String;)V

    .line 335
    new-instance v3, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v0}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 336
    new-instance v3, Lcom/asus/dmlib/syncml/message/common/Target;

    invoke-direct {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Target;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setTarget(Lcom/asus/dmlib/syncml/message/common/Target;)V

    .line 338
    new-instance v2, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v3, "MaxMsgSize"

    sget-object v4, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxMsgSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v2, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    const-string v3, "MaxObjSize"

    sget-object v4, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxObjSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setMetaData(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 343
    return-object v1
.end method

.method private setCredToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncHdr;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pSyncHdr"
    .parameter "pIsChalByOpposite"
    .parameter "pAuthTypeFromOpposite"
    .parameter "pCharsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v1}, Lcom/asus/dmlib/mo/DMAcc;->getClientAuthPref()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, authType:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 221
    move-object v0, p3

    .line 224
    :cond_0
    const-string v1, "ClientPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= Used Nonce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v3}, Lcom/asus/dmlib/mo/DMAcc;->getClientNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "b64"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DMAcc;->getClientUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v3}, Lcom/asus/dmlib/mo/DMAcc;->getClientPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v4}, Lcom/asus/dmlib/mo/DMAcc;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/asus/dmlib/util/DMUtils;->calculateCred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;)[B

    move-result-object v7

    .line 228
    .local v7, credData:[B
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmConfig;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v6, v1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Ljava/lang/String;)V

    .line 229
    .local v6, cred:Lcom/asus/dmlib/syncml/message/common/Cred;
    new-instance v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v2, "b64"

    invoke-direct {v1, v2, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/asus/dmlib/syncml/message/common/Cred;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 230
    invoke-virtual {p1, v6}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V

    .line 232
    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v1

    sget-object v2, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DevInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/syncml/message/common/Source;->setLocName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCommand(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add null command to ServerPackage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 376
    return-void
.end method

.method public addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V
    .locals 2
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null Status element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    const-string v0, "Results"

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/management/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    goto :goto_0
.end method

.method public getAlertArray()[Lcom/asus/dmlib/syncml/message/command/Alert;
    .locals 6

    .prologue
    .line 301
    iget-object v4, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v2

    .line 302
    .local v2, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v1, alertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/Alert;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 305
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_0
    aget-object p0, v2, v3

    check-cast p0, Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 311
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/asus/dmlib/syncml/message/command/Alert;

    .line 312
    .local v0, alertArray:[Lcom/asus/dmlib/syncml/message/command/Alert;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/asus/dmlib/syncml/message/command/Alert;

    check-cast p0, [Lcom/asus/dmlib/syncml/message/command/Alert;

    move-object v4, p0

    .line 315
    .end local v0           #alertArray:[Lcom/asus/dmlib/syncml/message/command/Alert;
    :goto_2
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getResults(Ljava/lang/Object;)Lcom/asus/dmlib/syncml/message/command/Results;
    .locals 3
    .parameter "pAppCommandRef"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getResultsArray()[Lcom/asus/dmlib/syncml/message/command/Results;

    move-result-object v1

    .line 290
    .local v1, results:[Lcom/asus/dmlib/syncml/message/command/Results;
    if-eqz v1, :cond_1

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 292
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/command/Results;->getAppCommandRef()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    aget-object v2, v1, v0

    .line 297
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 291
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getResultsArray()[Lcom/asus/dmlib/syncml/message/command/Results;
    .locals 5

    .prologue
    .line 240
    iget-object v3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v0

    .line 241
    .local v0, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/Results;>;"
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 244
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Results"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    aget-object p0, v0, v1

    check-cast p0, Lcom/asus/dmlib/syncml/message/command/Results;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 250
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/asus/dmlib/syncml/message/command/Results;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/asus/dmlib/syncml/message/command/Results;

    move-object v3, p0

    .line 253
    :goto_2
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v0

    return-object v0
.end method

.method public getStatusArray(Ljava/lang/Object;)[Lcom/asus/dmlib/syncml/message/management/Status;
    .locals 4
    .parameter "pAppCommandRef"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v1

    .line 258
    .local v1, statuses:[Lcom/asus/dmlib/syncml/message/management/Status;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, toReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/management/Status;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 261
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/management/Status;->getAppCommandRef()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 267
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/asus/dmlib/syncml/message/management/Status;

    check-cast p0, [Lcom/asus/dmlib/syncml/message/management/Status;

    move-object v3, p0

    .line 269
    :goto_2
    return-object v3

    .restart local p0
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    return-object v0
.end method

.method public isStatusOK(Ljava/lang/Object;)Z
    .locals 5
    .parameter "pAppCommandRef"

    .prologue
    .line 273
    const/4 v1, 0x1

    .line 274
    .local v1, ret:Z
    iget-object v3, p0, Lcom/asus/dmlib/syncml/pack/ClientPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v2

    .line 275
    .local v2, statuses:[Lcom/asus/dmlib/syncml/message/management/Status;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 276
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/management/Status;->getAppCommandRef()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, 0x0

    .line 284
    :cond_2
    return v1
.end method
