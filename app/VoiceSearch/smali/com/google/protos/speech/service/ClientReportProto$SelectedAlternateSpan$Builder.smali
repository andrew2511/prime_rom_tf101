.class public final Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private length_:I

.field private recognizedText_:Ljava/lang/Object;

.field private segmentUtteranceId_:I

.field private selectedText_:Ljava/lang/Object;

.field private start_:I

.field private unit_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2952
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 2953
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->maybeForceBuilderInitialization()V

    .line 2954
    return-void
.end method

.method static synthetic access$3500()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2959
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2957
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 2

    .prologue
    .line 2988
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    .line 2989
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2990
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2992
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 5

    .prologue
    .line 2996
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 2997
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2998
    const/4 v2, 0x0

    .line 2999
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3000
    or-int/lit8 v2, v2, 0x1

    .line 3002
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3702(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3003
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3004
    or-int/lit8 v2, v2, 0x2

    .line 3006
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3802(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3007
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3008
    or-int/lit8 v2, v2, 0x4

    .line 3010
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3902(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3011
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3012
    or-int/lit8 v2, v2, 0x8

    .line 3014
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4002(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3016
    or-int/lit8 v2, v2, 0x10

    .line 3018
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4102(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3019
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    .line 3020
    or-int/lit8 v1, v2, 0x20

    .line 3022
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4202(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3023
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4302(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3024
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2963
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2964
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    .line 2965
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2966
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    .line 2967
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2968
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    .line 2969
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 2971
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 2973
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2974
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:I

    .line 2975
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 2976
    return-object p0
.end method

.method public clearLength()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3134
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    .line 3137
    return-object p0
.end method

.method public clearRecognizedText()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3177
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3178
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getRecognizedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3180
    return-object p0
.end method

.method public clearSegmentUtteranceId()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3261
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:I

    .line 3264
    return-object p0
.end method

.method public clearSelectedText()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3230
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3231
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3233
    return-object p0
.end method

.method public clearStart()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3113
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    .line 3116
    return-object p0
.end method

.method public clearUnit()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 3092
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3093
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    .line 3095
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 2

    .prologue
    .line 2980
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1

    .prologue
    .line 2984
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 3125
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    return v0
.end method

.method public getRecognizedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3147
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3148
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3149
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3152
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRecognizedTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3159
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3161
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3164
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSegmentUtteranceId()I
    .locals 1

    .prologue
    .line 3252
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:I

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3200
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3201
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3202
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3205
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelectedTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3211
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3212
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3214
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3217
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 3104
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 3083
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .locals 2

    .prologue
    .line 3122
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

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

.method public hasRecognizedText()Z
    .locals 2

    .prologue
    .line 3143
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

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

.method public hasSegmentUtteranceId()Z
    .locals 2

    .prologue
    .line 3249
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

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

.method public hasSelectedText()Z
    .locals 2

    .prologue
    .line 3196
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    .line 3101
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

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

.method public hasUnit()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3080
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3055
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
    .line 2947
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2947
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2947
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3062
    const/4 v1, 0x0

    .line 3064
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3069
    if-eqz v0, :cond_0

    .line 3070
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3073
    :cond_0
    return-object p0

    .line 3065
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3066
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3067
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3069
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 3070
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    :cond_1
    throw v0

    .line 3069
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3028
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3051
    :goto_0
    return-object v0

    .line 3029
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3030
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getUnit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setUnit(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3032
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3033
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setStart(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3035
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3036
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setLength(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3038
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasRecognizedText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3039
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3040
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4000(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3043
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasSelectedText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3044
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3045
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4100(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3048
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasSegmentUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3049
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSegmentUtteranceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setSegmentUtteranceId(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    :cond_6
    move-object v0, p0

    .line 3051
    goto :goto_0
.end method

.method public setLength(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3128
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3129
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    .line 3131
    return-object p0
.end method

.method public setRecognizedText(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3168
    if-nez p1, :cond_0

    .line 3169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3171
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3172
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3174
    return-object p0
.end method

.method public setRecognizedTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3184
    if-nez p1, :cond_0

    .line 3185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3187
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3188
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3190
    return-object p0
.end method

.method public setSegmentUtteranceId(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3255
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3256
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:I

    .line 3258
    return-object p0
.end method

.method public setSelectedText(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3221
    if-nez p1, :cond_0

    .line 3222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3224
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3225
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3227
    return-object p0
.end method

.method public setSelectedTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3237
    if-nez p1, :cond_0

    .line 3238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3240
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3241
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3243
    return-object p0
.end method

.method public setStart(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3107
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3108
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    .line 3110
    return-object p0
.end method

.method public setUnit(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3086
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3087
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    .line 3089
    return-object p0
.end method
