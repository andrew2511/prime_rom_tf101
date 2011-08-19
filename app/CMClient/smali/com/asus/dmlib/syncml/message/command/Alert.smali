.class public Lcom/asus/dmlib/syncml/message/command/Alert;
.super Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;
    }
.end annotation


# static fields
.field public static final ALERT_1100_DISPLAY:I = 0x44c

.field public static final ALERT_1101_CONFIRM_OR_REJECT:I = 0x44d

.field public static final ALERT_1102_TEXT_INPUT:I = 0x44e

.field public static final ALERT_1103_SINGLE_CHOICE:I = 0x44f

.field public static final ALERT_1104_MULTIPLE_CHOICE:I = 0x450

.field public static final ALERT_1200_SERVER_INITIATED_MGMT:I = 0x4b0

.field public static final ALERT_1201_CLIENT_INITIATED_MANAGEMENT:I = 0x4b1

.field public static final ALERT_1222_NEXT_MESSAGE:I = 0x4c6

.field public static final ALERT_1223_SESSION_ABORT:I = 0x4c7

.field public static final ALERT_1224_CLIENT_EVENT:I = 0x4c8

.field public static final ALERT_1225_NO_END_OF_DATA:I = 0x4c9

.field public static final ALERT_1226_GENERIC_ALERT:I = 0x4ca

.field private static final TAG:Ljava/lang/String; = "Alert"


# instance fields
.field private mAlertCode:I

.field private mCorrelator:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;-><init>()V

    .line 53
    const/4 v6, -0x1

    iput v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 63
    .local v2, keepParsing:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v4

    .line 65
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 67
    :sswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v6, "NoResp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mIsNoResp:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 106
    .end local v4           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 107
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 111
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 70
    .restart local v4       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Cred"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-direct {v6, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    .end local v4           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 109
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 72
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #type:I
    :cond_3
    :try_start_2
    const-string v6, "Item"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v7, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :sswitch_1
    const-string v6, "Alert"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    :sswitch_2
    const/4 v5, 0x0

    .line 84
    .local v5, value:Ljava/lang/String;
    instance-of v6, p1, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_5

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 96
    :cond_4
    :goto_2
    const-string v6, "CmdID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 97
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCmdID:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_5
    instance-of v6, p1, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v6, :cond_4

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getWapCode()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_4

    .line 92
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

    .line 98
    :cond_6
    const-string v6, "Correlator"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 99
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :cond_7
    const-string v6, "Data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;
    .locals 7
    .parameter "command"
    .parameter "statusCode"

    .prologue
    const/16 v6, 0x130

    const/16 v5, 0xd6

    const/16 v3, 0xc8

    const/16 v4, 0x1f4

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, status:Lcom/asus/dmlib/syncml/message/management/Status;
    if-ne v3, p2, :cond_1

    .line 455
    :try_start_0
    new-instance v2, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v3, 0xc8

    invoke-direct {v2, p1, v3}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .local v2, status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object v1, v2

    .line 488
    .end local v2           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v1       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_0
    :goto_0
    return-object v1

    .line 457
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 458
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 459
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 460
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 461
    .local v0, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    throw v1

    .line 462
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 464
    .end local v0           #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 467
    :try_start_1
    new-instance v2, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v3, 0xd6

    invoke-direct {v2, p1, v3}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v2       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object v1, v2

    .line 475
    .end local v2           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v1       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    goto :goto_0

    .line 469
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 470
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 471
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 472
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 473
    .local v0, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    throw v1

    .line 474
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 476
    .end local v0           #e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    :cond_2
    if-ne v6, p2, :cond_0

    .line 478
    :try_start_2
    new-instance v2, Lcom/asus/dmlib/syncml/message/management/Status;

    const/16 v3, 0x130

    invoke-direct {v2, p1, v3}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v1           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v2       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object v1, v2

    .line 486
    .end local v2           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    .restart local v1       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    goto :goto_0

    .line 480
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 481
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 482
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v3

    move-object v0, v3

    .line 484
    .local v0, e:Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
    throw v1

    .line 485
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private waitUserInput()V
    .locals 2

    .prologue
    .line 440
    monitor-enter p0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 447
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method

.method public execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 39
    .parameter "syncml"

    .prologue
    .line 181
    const-string v6, "Alert"

    const-string v7, "ALERT_EXECUTE strat..."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v13, 0x2

    .line 183
    .local v13, choiceItemOffset:I
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v11

    .line 184
    .local v11, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    const/16 v32, 0x0

    .line 186
    .local v32, status:Lcom/asus/dmlib/syncml/message/management/Status;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 187
    .local v20, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual/range {v20 .. v20}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, firstItem:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    check-cast v20, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 189
    .restart local v20       #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual/range {v20 .. v20}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, dlgText:Ljava/lang/String;
    new-instance v29, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;-><init>(Lcom/asus/dmlib/syncml/message/command/Alert;Ljava/lang/String;)V

    .line 193
    .local v29, optionParameter:Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getMmiFactory()Lcom/asus/dmlib/vdm/MmiFactory;

    move-result-object v27

    .line 194
    .local v27, mmmiFactory:Lcom/asus/dmlib/vdm/MmiFactory;
    new-instance v22, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;-><init>(Lcom/asus/dmlib/syncml/message/command/Alert;)V

    .line 198
    .local v22, mDMMmiObserver:Lcom/asus/dmlib/syncml/dm/DMMmiObserver;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    move v6, v0

    const/16 v7, 0x44c

    if-ne v6, v7, :cond_3

    .line 199
    const-string v6, "Alert"

    const-string v7, "ALERT_1100 START"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createInfoMsgDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInfoMsg;

    move-result-object v28

    .line 202
    .local v28, mmmiInfoMsg:Lcom/asus/dmlib/vdm/MmiInfoMsg;
    new-instance v6, Lcom/asus/dmlib/vdm/MmiViewContext;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    sget-object v7, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->GENERIC:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    move-object/from16 v0, v28

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiInfoMsg;->display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;)Lcom/asus/dmlib/vdm/MmiResult;

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/syncml/message/command/Alert;->waitUserInput()V

    .line 205
    const-string v6, "Alert"

    const-string v7, "Alert notified when user ended input"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getDisplayResult()Z

    move-result v35

    .line 208
    .local v35, tempResult:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsTimeout()Z

    move-result v36

    .line 209
    .local v36, timeout:Z
    const/4 v6, 0x1

    move/from16 v0, v35

    move v1, v6

    if-eq v0, v1, :cond_0

    const/4 v6, 0x1

    move/from16 v0, v36

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 210
    :cond_0
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 212
    :cond_1
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 213
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v28           #mmmiInfoMsg:Lcom/asus/dmlib/vdm/MmiInfoMsg;
    .end local v35           #tempResult:Z
    .end local v36           #timeout:Z
    .end local p0
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 216
    .restart local p0
    .restart local p1
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    move v6, v0

    const/16 v7, 0x44d

    if-ne v6, v7, :cond_8

    .line 217
    const-string v6, "Alert"

    const-string v7, "ALERT_1101 START"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createConfirmationDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiConfirmation;

    move-result-object v26

    .line 220
    .local v26, mmmiConfirmation:Lcom/asus/dmlib/vdm/MmiConfirmation;
    new-instance v6, Lcom/asus/dmlib/vdm/MmiViewContext;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    sget-object v7, Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;->UNDEFINED:Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiConfirmation;->display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)Lcom/asus/dmlib/vdm/MmiResult;

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/syncml/message/command/Alert;->waitUserInput()V

    .line 223
    const-string v6, "Alert"

    const-string v7, "Alert notified when user ended input"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsTimeout()Z

    move-result v36

    .line 226
    .restart local v36       #timeout:Z
    const/16 v35, 0x0

    .line 227
    .restart local v35       #tempResult:Z
    if-eqz v36, :cond_6

    .line 228
    const-string v6, "1"

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 229
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 248
    :goto_1
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 249
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    const-string v6, "0"

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 232
    const/16 v6, 0x130

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    goto :goto_1

    .line 235
    :cond_5
    const/16 v6, 0x130

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    goto :goto_1

    .line 238
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getConfirmationResult()Z

    move-result v35

    .line 240
    const/4 v6, 0x1

    move/from16 v0, v35

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 241
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    goto :goto_1

    .line 244
    :cond_7
    const/16 v6, 0x130

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    goto :goto_1

    .line 252
    .end local v26           #mmmiConfirmation:Lcom/asus/dmlib/vdm/MmiConfirmation;
    .end local v35           #tempResult:Z
    .end local v36           #timeout:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    move v6, v0

    const/16 v7, 0x44e

    if-ne v6, v7, :cond_c

    .line 253
    const-string v6, "Alert"

    const-string v7, "ALERT_1102 START"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createInputQueryDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInputQuery;

    move-result-object v5

    .line 256
    .local v5, mmmiInputQuery:Lcom/asus/dmlib/vdm/MmiInputQuery;
    new-instance v6, Lcom/asus/dmlib/vdm/MmiViewContext;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    move-object v7, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->echoType:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    move-object v8, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxLen:I

    move v9, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Lcom/asus/dmlib/vdm/MmiInputQuery;->display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;ILjava/lang/String;)Lcom/asus/dmlib/vdm/MmiResult;

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/syncml/message/command/Alert;->waitUserInput()V

    .line 260
    const-string v6, "Alert"

    const-string v7, "Alert notified when user ended input"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsTimeout()Z

    move-result v36

    .line 263
    .restart local v36       #timeout:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsCancelled()Z

    move-result v12

    .line 265
    .local v12, cancelled:Z
    const/4 v6, 0x1

    move/from16 v0, v36

    move v1, v6

    if-ne v0, v1, :cond_a

    .line 266
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_9

    .line 267
    new-instance v30, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct/range {v30 .. v30}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 268
    .local v30, responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 269
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 270
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 272
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 273
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v30           #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_9
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 277
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 278
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_a
    const/4 v6, 0x1

    if-ne v12, v6, :cond_b

    .line 281
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 282
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 283
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_b
    new-instance v30, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct/range {v30 .. v30}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 286
    .restart local v30       #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getInputResult()Ljava/lang/String;

    move-result-object v38

    .line 287
    .local v38, userInput:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 288
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 289
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 291
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 292
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v5           #mmmiInputQuery:Lcom/asus/dmlib/vdm/MmiInputQuery;
    .end local v12           #cancelled:Z
    .end local v30           #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v36           #timeout:Z
    .end local v38           #userInput:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    move v6, v0

    const/16 v7, 0x44f

    if-ne v6, v7, :cond_13

    .line 297
    const-string v6, "Alert"

    const-string v7, "ALERT_1103 START"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 300
    .local v23, mItemListSize:I
    sub-int v6, v23, v13

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 302
    .local v21, mChoiceStrArray:[Ljava/lang/String;
    const/16 v19, 0x0

    .end local p1
    .local v19, i:I
    :goto_2
    sub-int v6, v23, v13

    move/from16 v0, v19

    move v1, v6

    if-ge v0, v1, :cond_d

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    add-int v7, v19, v13

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v21, v19

    .line 302
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 306
    :cond_d
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createChoiceListDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiChoiceList;

    move-result-object v25

    .line 307
    .local v25, mmmiChoiceList:Lcom/asus/dmlib/vdm/MmiChoiceList;
    new-instance v6, Lcom/asus/dmlib/vdm/MmiViewContext;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v21

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/MmiChoiceList;->display(Lcom/asus/dmlib/vdm/MmiViewContext;[Ljava/lang/String;IZ)Lcom/asus/dmlib/vdm/MmiResult;

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/syncml/message/command/Alert;->waitUserInput()V

    .line 311
    const-string v6, "Alert"

    const-string v7, "Alert notified when user ended input"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsTimeout()Z

    move-result v36

    .line 314
    .restart local v36       #timeout:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsCancelled()Z

    move-result v12

    .line 315
    .restart local v12       #cancelled:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getChoiceResult()I

    move-result v14

    .line 317
    .local v14, choiceResult:I
    const/4 v6, 0x1

    move/from16 v0, v36

    move v1, v6

    if-ne v0, v1, :cond_f

    .line 318
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_e

    .line 319
    new-instance v30, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct/range {v30 .. v30}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 320
    .restart local v30       #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 321
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 324
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 325
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    .end local v30           #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_e
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 329
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 330
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_f
    const/4 v6, 0x1

    if-ne v12, v6, :cond_10

    .line 333
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 335
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 336
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_10
    new-instance v30, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct/range {v30 .. v30}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 339
    .restart local v30       #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 340
    const/16 v37, 0x0

    .line 341
    .local v37, userChoice:I
    const/16 v19, 0x1

    :goto_3
    sub-int v6, v23, v13

    move/from16 v0, v19

    move v1, v6

    if-gt v0, v1, :cond_12

    .line 342
    and-int/lit8 v6, v14, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 343
    move/from16 v37, v19

    .line 345
    :cond_11
    shr-int/lit8 v14, v14, 0x1

    .line 341
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 347
    :cond_12
    move/from16 v14, v37

    .line 348
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 349
    .local v15, choiceResultString:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 352
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 353
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v12           #cancelled:Z
    .end local v14           #choiceResult:I
    .end local v15           #choiceResultString:Ljava/lang/String;
    .end local v19           #i:I
    .end local v21           #mChoiceStrArray:[Ljava/lang/String;
    .end local v23           #mItemListSize:I
    .end local v25           #mmmiChoiceList:Lcom/asus/dmlib/vdm/MmiChoiceList;
    .end local v30           #responseItem:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v36           #timeout:Z
    .end local v37           #userChoice:I
    .restart local p1
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    move v6, v0

    const/16 v7, 0x450

    if-ne v6, v7, :cond_2

    .line 357
    const-string v6, "Alert"

    const-string v7, "ALERT_1104 START"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v24, mMultiChoiceResultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/dm/message/description/Item;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 361
    .restart local v23       #mItemListSize:I
    sub-int v6, v23, v13

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 363
    .restart local v21       #mChoiceStrArray:[Ljava/lang/String;
    const/16 v19, 0x0

    .end local p1
    .restart local v19       #i:I
    :goto_4
    sub-int v6, v23, v13

    move/from16 v0, v19

    move v1, v6

    if-ge v0, v1, :cond_14

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    move-object v6, v0

    add-int v7, v19, v13

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->getData()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v21, v19

    .line 363
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 367
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createChoiceListDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiChoiceList;

    move-result-object v25

    .line 368
    .restart local v25       #mmmiChoiceList:Lcom/asus/dmlib/vdm/MmiChoiceList;
    new-instance v6, Lcom/asus/dmlib/vdm/MmiViewContext;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    move v8, v0

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v21

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/MmiChoiceList;->display(Lcom/asus/dmlib/vdm/MmiViewContext;[Ljava/lang/String;IZ)Lcom/asus/dmlib/vdm/MmiResult;

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/syncml/message/command/Alert;->waitUserInput()V

    .line 372
    const-string v6, "Alert"

    const-string v7, "Alert notified when user ended input"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsTimeout()Z

    move-result v36

    .line 375
    .restart local v36       #timeout:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getIsCancelled()Z

    move-result v12

    .line 376
    .restart local v12       #cancelled:Z
    invoke-virtual/range {v22 .. v22}, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->getChoiceResult()I

    move-result v14

    .line 378
    .restart local v14       #choiceResult:I
    const/4 v6, 0x1

    move/from16 v0, v36

    move v1, v6

    if-ne v0, v1, :cond_19

    .line 379
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_18

    .line 380
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 382
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_15

    .line 383
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "\\-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 384
    .local v33, tempDR:[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v34, v0

    .line 386
    .local v34, tempDRLenth:I
    const/16 v19, 0x0

    .end local p0
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 387
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v6}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    aget-object v6, v33, v19

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 391
    .end local v33           #tempDR:[Ljava/lang/String;
    .end local v34           #tempDRLenth:I
    .restart local p0
    :cond_15
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v6}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v6, 0x0

    move-object/from16 v0, v24

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 395
    :cond_16
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 396
    .local v31, resultListSize:I
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 397
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 396
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 400
    :cond_17
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 401
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    .end local v31           #resultListSize:I
    .restart local p0
    :cond_18
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 406
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 407
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :cond_19
    const/4 v6, 0x1

    if-ne v12, v6, :cond_1a

    .line 410
    const/16 v6, 0xd6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 412
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 413
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_1a
    const/16 v6, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v32

    .line 417
    const/16 v16, 0x0

    .line 418
    .local v16, choicedCount:I
    const/16 v19, 0x1

    .end local p0
    :goto_7
    sub-int v6, v23, v13

    move/from16 v0, v19

    move v1, v6

    if-gt v0, v1, :cond_1c

    .line 419
    and-int/lit8 v6, v14, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    .line 420
    new-instance v6, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v6}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 422
    add-int/lit8 v16, v16, 0x1

    .line 424
    :cond_1b
    shr-int/lit8 v14, v14, 0x1

    .line 418
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 427
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 428
    .restart local v31       #resultListSize:I
    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_1d

    .line 429
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 428
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 432
    :cond_1d
    move-object v0, v11

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 433
    const-string v6, "Alert"

    const-string v7, "responsed...."

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getAlertCode()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    return v0
.end method

.method public getCorrelator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    return-object v0
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
    .line 522
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 2
    .parameter "contentType"

    .prologue
    .line 619
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Meta"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasNestedCommands()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public setAlertCode(I)V
    .locals 0
    .parameter "alertCode"

    .prologue
    .line 510
    iput p1, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    .line 511
    return-void
.end method

.method public setCorrelator(Ljava/lang/String;)V
    .locals 0
    .parameter "correlator"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 2
    .parameter "meta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;

    const-string v1, "Meta"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x3d

    const/4 v5, 0x1

    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x46

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 563
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCmdID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 564
    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 567
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 568
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCmdID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 570
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    :goto_0
    iget-boolean v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mIsNoResp:Z

    if-eqz v3, :cond_0

    .line 576
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 578
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 582
    :cond_1
    iget v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 583
    const/16 v3, 0x4f

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 585
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    iget v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 587
    iget v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 589
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 592
    :cond_2
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 593
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 595
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 596
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 597
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 599
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 602
    :cond_3
    const/4 v1, 0x0

    .local v1, c:I
    :goto_1
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 603
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    .line 604
    .local v2, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 572
    .end local v1           #c:I
    .end local v2           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 607
    .restart local v1       #c:I
    :cond_5
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 609
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "<Alert>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v2, "<CmdID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCmdID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CmdID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-boolean v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mIsNoResp:Z

    if-eqz v2, :cond_0

    .line 539
    const-string v2, "<NoResp/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/common/Cred;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_1
    iget v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 545
    const-string v2, "<Data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mAlertCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Data>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_2
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 548
    const-string v2, "<Correlator>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mCorrelator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Correlator>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_3
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 551
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/command/Alert;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_4
    const-string v2, "</Alert>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
