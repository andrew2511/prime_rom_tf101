.class public final Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;,
        Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_PERCEIVED_REQUEST_STATUS_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_SIDE_ERROR_FIELD_NUMBER:I = 0x2

.field public static final IN_PROGRESS_RESULT_LATENCY_MS_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOGNITION_QUALITY_INFO_FIELD_NUMBER:I = 0xc

.field public static final REQUEST_ACK_LATENCY_MS_FIELD_NUMBER:I = 0x3

.field public static final SELECTED_NBEST_INDEX_FIELD_NUMBER:I = 0x5

.field public static final TOTAL_LATENCY_MS_FIELD_NUMBER:I = 0x6

.field public static final USER_PERCEIVED_LATENCY_MS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;


# instance fields
.field private bitField0_:I

.field private clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field private clientSideError_:I

.field private inProgressResultLatencyMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

.field private requestAckLatencyMs_:I

.field private selectedNbestIndex_:I

.field private totalLatencyMs_:I

.field private userPerceivedLatencyMs_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    .line 861
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 862
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->initFields()V

    .line 863
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 361
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 113
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->initFields()V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_0
    if-nez v1, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 119
    sparse-switch v0, :sswitch_data_0

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    move v1, v0

    .line 183
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 122
    goto :goto_1

    .line 131
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 132
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 135
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move v0, v1

    goto :goto_1

    .line 140
    :sswitch_2
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    move v0, v1

    .line 142
    goto :goto_1

    .line 145
    :sswitch_3
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    move v0, v1

    .line 147
    goto :goto_1

    .line 150
    :sswitch_4
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    move v0, v1

    .line 152
    goto :goto_1

    .line 155
    :sswitch_5
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    move v0, v1

    .line 157
    goto :goto_1

    .line 160
    :sswitch_6
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 161
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    move v0, v1

    .line 162
    goto :goto_1

    .line 165
    :sswitch_7
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 166
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    move v0, v1

    .line 167
    goto :goto_1

    .line 170
    :sswitch_8
    const/4 v0, 0x0

    .line 171
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    .line 172
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 174
    :goto_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 175
    if-eqz v2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 177
    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 179
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 180
    goto/16 :goto_1

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->makeExtensionsImmutable()V

    .line 192
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->makeExtensionsImmutable()V

    throw v0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x62 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 361
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 361
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 98
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 353
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    .line 354
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    .line 355
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    .line 356
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    .line 357
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    .line 358
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    .line 359
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 360
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->access$100()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1
    .parameter

    .prologue
    .line 512
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 459
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object p0
.end method


# virtual methods
.method public getClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object v0
.end method

.method public getClientSideError()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method public getInProgressResultLatencyMs()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object v0
.end method

.method public getRequestAckLatencyMs()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    return v0
.end method

.method public getSelectedNbestIndex()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 409
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 410
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 447
    :goto_0
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 414
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 417
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 418
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 422
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 426
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 430
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 434
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_6
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 438
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_7
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 442
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getTotalLatencyMs()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    return v0
.end method

.method public getUserPerceivedLatencyMs()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    return v0
.end method

.method public hasClientPerceivedRequestStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 275
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientSideError()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInProgressResultLatencyMs()Z
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognitionQualityInfo()Z
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestAckLatencyMs()Z
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedNbestIndex()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalLatencyMs()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserPerceivedLatencyMs()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 364
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 371
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 364
    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iput-byte v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    move v0, v3

    .line 368
    goto :goto_0

    .line 370
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    move v0, v2

    .line 371
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 376
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getSerializedSize()I

    .line 378
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 380
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 381
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 383
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 384
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 386
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 387
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 389
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 390
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 392
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 393
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 395
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 396
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 398
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 399
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 401
    :cond_6
    invoke-virtual {v0, v5, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 402
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 403
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 405
    :cond_7
    return-void
.end method
