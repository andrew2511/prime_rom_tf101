.class public final Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ProtocolFeaturesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;",
        "Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ProtocolFeaturesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dictationMode_:Z

.field private enableAck_:Z

.field private enableInProgressResponse_:Z

.field private enableInProgressSynthesizeResponse_:Z

.field private enablePartialResults_:Z

.field private enableProfanityFilterCompatibility_:Z

.field private enableRecognitionAlternates_:Z

.field private enableUnsolicitDestroy_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1104
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    .line 1125
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    .line 965
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->maybeForceBuilderInitialization()V

    .line 966
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 969
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1008
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 5

    .prologue
    .line 1012
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 1013
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1014
    const/4 v2, 0x0

    .line 1015
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1016
    or-int/lit8 v2, v2, 0x1

    .line 1018
    :cond_0
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$302(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1019
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1020
    or-int/lit8 v2, v2, 0x2

    .line 1022
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$402(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1023
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1024
    or-int/lit8 v2, v2, 0x4

    .line 1026
    :cond_2
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressResponse_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$502(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1027
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1028
    or-int/lit8 v2, v2, 0x8

    .line 1030
    :cond_3
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableRecognitionAlternates_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$602(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1031
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1032
    or-int/lit8 v2, v2, 0x10

    .line 1034
    :cond_4
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->dictationMode_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$702(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1035
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1036
    or-int/lit8 v2, v2, 0x20

    .line 1038
    :cond_5
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressSynthesizeResponse_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$802(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1039
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1040
    or-int/lit8 v2, v2, 0x40

    .line 1042
    :cond_6
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableProfanityFilterCompatibility_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$902(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1043
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    .line 1044
    or-int/lit16 v1, v2, 0x80

    .line 1046
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enablePartialResults_:Z

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$1002(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z

    .line 1047
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->access$1102(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;I)I

    .line 1048
    return-object v0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 975
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 976
    iput-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    .line 977
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 978
    iput-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    .line 979
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 980
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressResponse_:Z

    .line 981
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 982
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableRecognitionAlternates_:Z

    .line 983
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 984
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->dictationMode_:Z

    .line 985
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 986
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressSynthesizeResponse_:Z

    .line 987
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 988
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableProfanityFilterCompatibility_:Z

    .line 989
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 990
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enablePartialResults_:Z

    .line 991
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 992
    return-object p0
.end method

.method public clearDictationMode()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->dictationMode_:Z

    .line 1205
    return-object p0
.end method

.method public clearEnableAck()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    .line 1121
    return-object p0
.end method

.method public clearEnableInProgressResponse()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressResponse_:Z

    .line 1163
    return-object p0
.end method

.method public clearEnableInProgressSynthesizeResponse()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressSynthesizeResponse_:Z

    .line 1226
    return-object p0
.end method

.method public clearEnablePartialResults()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enablePartialResults_:Z

    .line 1268
    return-object p0
.end method

.method public clearEnableProfanityFilterCompatibility()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableProfanityFilterCompatibility_:Z

    .line 1247
    return-object p0
.end method

.method public clearEnableRecognitionAlternates()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableRecognitionAlternates_:Z

    .line 1184
    return-object p0
.end method

.method public clearEnableUnsolicitDestroy()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    .line 1142
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 2

    .prologue
    .line 996
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1

    .prologue
    .line 1000
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public getDictationMode()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->dictationMode_:Z

    return v0
.end method

.method public getEnableAck()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    return v0
.end method

.method public getEnableInProgressResponse()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressResponse_:Z

    return v0
.end method

.method public getEnableInProgressSynthesizeResponse()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressSynthesizeResponse_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enablePartialResults_:Z

    return v0
.end method

.method public getEnableProfanityFilterCompatibility()Z
    .locals 1

    .prologue
    .line 1235
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableProfanityFilterCompatibility_:Z

    return v0
.end method

.method public getEnableRecognitionAlternates()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableRecognitionAlternates_:Z

    return v0
.end method

.method public getEnableUnsolicitDestroy()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    return v0
.end method

.method public hasDictationMode()Z
    .locals 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnableAck()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1106
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableInProgressResponse()Z
    .locals 2

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnableInProgressSynthesizeResponse()Z
    .locals 2

    .prologue
    .line 1211
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnablePartialResults()Z
    .locals 2

    .prologue
    .line 1253
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnableProfanityFilterCompatibility()Z
    .locals 2

    .prologue
    .line 1232
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnableRecognitionAlternates()Z
    .locals 2

    .prologue
    .line 1169
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public hasEnableUnsolicitDestroy()Z
    .locals 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 959
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    const/4 v1, 0x0

    .line 1090
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1099
    :cond_0
    return-object p0

    .line 1091
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1092
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1093
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1095
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1096
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    :cond_1
    throw v0

    .line 1095
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1077
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableAck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableAck()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableAck(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1056
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableUnsolicitDestroy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableUnsolicitDestroy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableUnsolicitDestroy(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableInProgressResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableInProgressResponse()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableInProgressResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1062
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableRecognitionAlternates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableRecognitionAlternates()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableRecognitionAlternates(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1065
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasDictationMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1066
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDictationMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setDictationMode(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1068
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableInProgressSynthesizeResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1069
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableInProgressSynthesizeResponse()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableInProgressSynthesizeResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1071
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnableProfanityFilterCompatibility()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1072
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnableProfanityFilterCompatibility()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableProfanityFilterCompatibility(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 1074
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->hasEnablePartialResults()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1075
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getEnablePartialResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnablePartialResults(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    :cond_8
    move-object v0, p0

    .line 1077
    goto :goto_0
.end method

.method public setDictationMode(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1196
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1197
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->dictationMode_:Z

    .line 1199
    return-object p0
.end method

.method public setEnableAck(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1112
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1113
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableAck_:Z

    .line 1115
    return-object p0
.end method

.method public setEnableInProgressResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1154
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1155
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressResponse_:Z

    .line 1157
    return-object p0
.end method

.method public setEnableInProgressSynthesizeResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1217
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1218
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableInProgressSynthesizeResponse_:Z

    .line 1220
    return-object p0
.end method

.method public setEnablePartialResults(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1259
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1260
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enablePartialResults_:Z

    .line 1262
    return-object p0
.end method

.method public setEnableProfanityFilterCompatibility(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1238
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1239
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableProfanityFilterCompatibility_:Z

    .line 1241
    return-object p0
.end method

.method public setEnableRecognitionAlternates(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1176
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableRecognitionAlternates_:Z

    .line 1178
    return-object p0
.end method

.method public setEnableUnsolicitDestroy(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1133
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->bitField0_:I

    .line 1134
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->enableUnsolicitDestroy_:Z

    .line 1136
    return-object p0
.end method
