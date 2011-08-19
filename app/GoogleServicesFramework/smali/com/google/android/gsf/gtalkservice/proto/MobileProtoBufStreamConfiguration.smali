.class public Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;
.super Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;
.source "MobileProtoBufStreamConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;-><init>()V

    .line 87
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 88
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 89
    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 90
    const/4 v0, 0x3

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 91
    const/4 v0, 0x4

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 92
    const/4 v0, 0x5

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 93
    const/4 v0, 0x6

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 94
    const/4 v0, 0x7

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 95
    const/16 v0, 0x8

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 96
    const/16 v0, 0x9

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 97
    const/16 v0, 0xa

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 98
    const/16 v0, 0xb

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 99
    const/16 v0, 0xc

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 100
    const/16 v0, 0xd

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 102
    const/16 v0, 0xe

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 104
    return-void
.end method
