.class public Lcom/asus/dmlib/syncml/message/container/SyncBody;
.super Ljava/lang/Object;
.source "SyncBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncBody"


# instance fields
.field private mCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/command/BaseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMoreData:Z

.field private mIsFinal:Z

.field private mStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/message/management/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    .line 39
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mHasMoreData:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;)V
    .locals 2
    .parameter "body"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    .line 39
    iput-boolean v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mHasMoreData:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    .line 136
    const-string v0, "Final"

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->getChild(Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iput-boolean v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 8
    .parameter "parser"
    .parameter "pMsgID"

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    .line 39
    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mHasMoreData:Z

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    .line 56
    const/4 v2, 0x1

    .line 57
    .local v2, keepParsingBody:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 58
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v5

    .line 59
    .local v5, type:I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "Status"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    new-instance v3, Lcom/asus/dmlib/syncml/message/management/Status;

    invoke-direct {v3, p1}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    .local v3, s:Lcom/asus/dmlib/syncml/message/management/Status;
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    .end local v3           #s:Lcom/asus/dmlib/syncml/message/management/Status;
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #type:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 129
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 133
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 65
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #type:I
    :cond_2
    :try_start_1
    const-string v6, "Final"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    .end local v4           #tagName:Ljava/lang/String;
    .end local v5           #type:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 131
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tagName:Ljava/lang/String;
    .restart local v5       #type:I
    :cond_3
    const/4 v0, 0x0

    .line 69
    .local v0, bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :try_start_2
    const-string v6, "Alert"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Alert;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Alert;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    .line 115
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_5
    const-string v6, "Atomic"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Atomic;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Atomic;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_6
    const-string v6, "Copy"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 76
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Copy;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Copy;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 77
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_7
    const-string v6, "Exec"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Exec;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Exec;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 80
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_8
    const-string v6, "Get"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 82
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Get;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Get;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 83
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_9
    const-string v6, "Map"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 85
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Map;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Map;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 86
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_a
    const-string v6, "Move"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 88
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Move;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Move;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 89
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :cond_b
    const-string v6, "Put"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 91
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Put;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Put;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_c
    const-string v6, "Results"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 94
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Results;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Results;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 95
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 96
    :cond_d
    const-string v6, "Search"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 97
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Search;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Search;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 98
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 99
    :cond_e
    const-string v6, "Sequence"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 100
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Sequence;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Sequence;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 102
    :cond_f
    const-string v6, "Sync"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 103
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Sync;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Sync;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 105
    :cond_10
    const-string v6, "Add"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 106
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Add;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Add;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 107
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 108
    :cond_11
    const-string v6, "Replace"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 109
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Replace;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Replace;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 110
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 111
    :cond_12
    const-string v6, "Delete"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Delete;

    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {v0, p1}, Lcom/asus/dmlib/syncml/message/command/Delete;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 113
    .restart local v0       #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setMessageID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 119
    .end local v0           #bc:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .end local v4           #tagName:Ljava/lang/String;
    :pswitch_1
    const-string v6, "SyncBody"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public addCommands([Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V
    .locals 3
    .parameter "commands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set a null commands"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 194
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
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
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addStatuses([Lcom/asus/dmlib/syncml/message/management/Status;)V
    .locals 3
    .parameter "statuses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set a null statuses"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 204
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .locals 2

    .prologue
    .line 157
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 158
    .local v0, c:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    return-object p0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 7
    .parameter "xmlType"

    .prologue
    const/4 v5, 0x0

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, length:I
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    add-int/lit8 v2, v2, 0x15

    .line 259
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    :goto_0
    add-int/lit8 v2, v4, 0x15

    .line 268
    :goto_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 269
    .local v0, command:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v0, p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->getLength(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .end local v0           #command:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    move v4, v5

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    add-int/lit8 v2, v2, 0x2

    .line 262
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v2, v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_3

    .line 264
    :cond_3
    const-string v4, "SyncBody"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SyncBody getLength() returning -1, xml type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v4, -0x1

    .line 274
    :goto_4
    return v4

    .line 271
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/message/management/Status;

    .line 272
    .local v3, status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/management/Status;->getLength(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_5

    .end local v3           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_5
    move v4, v2

    .line 274
    goto :goto_4
.end method

.method public getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;
    .locals 2

    .prologue
    .line 162
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/asus/dmlib/syncml/message/management/Status;

    .line 163
    .local v0, s:[Lcom/asus/dmlib/syncml/message/management/Status;
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/asus/dmlib/syncml/message/management/Status;

    return-object p0
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mHasMoreData:Z

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    return v0
.end method

.method public removeCommand(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFinal(Z)V
    .locals 0
    .parameter "isFinal"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    .line 178
    return-void
.end method

.method public setMoreData(Z)V
    .locals 0
    .parameter "moreData"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mHasMoreData:Z

    .line 186
    return-void
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x6b

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    const/4 v1, 0x0

    .local v1, c:I
    :goto_0
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/syncml/message/management/Status;

    .line 240
    .local v3, status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v3, p1}, Lcom/asus/dmlib/syncml/message/management/Status;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v3           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 244
    .local v2, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v2, p1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v2           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_1
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    if-eqz v4, :cond_2

    .line 248
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "<SyncBody>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, status:Lcom/asus/dmlib/syncml/message/management/Status;
    const/4 v1, 0x0

    .line 215
    .local v1, element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    check-cast v3, Lcom/asus/dmlib/syncml/message/management/Status;

    .line 217
    .restart local v3       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/management/Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    check-cast v1, Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 221
    .restart local v1       #element:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_1
    iget-boolean v4, p0, Lcom/asus/dmlib/syncml/message/container/SyncBody;->mIsFinal:Z

    if-eqz v4, :cond_2

    .line 224
    const-string v4, "<Final/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    const-string v4, "</SyncBody>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
