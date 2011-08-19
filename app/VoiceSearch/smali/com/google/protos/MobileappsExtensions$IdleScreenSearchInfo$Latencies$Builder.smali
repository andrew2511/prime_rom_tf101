.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private factor_:I

.field private timeout_:Z

.field private type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5146
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5043
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->maybeForceBuilderInitialization()V

    .line 5044
    return-void
.end method

.method static synthetic access$4000()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5049
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5047
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 2

    .prologue
    .line 5074
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    .line 5075
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5076
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5078
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 5

    .prologue
    .line 5082
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 5083
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5084
    const/4 v2, 0x0

    .line 5085
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5086
    or-int/lit8 v2, v2, 0x1

    .line 5088
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5089
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5090
    or-int/lit8 v2, v2, 0x2

    .line 5092
    :cond_1
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5093
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5094
    or-int/lit8 v2, v2, 0x4

    .line 5096
    :cond_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5097
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 5098
    or-int/lit8 v1, v2, 0x8

    .line 5100
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Z)Z

    .line 5101
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5102
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5053
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5054
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5055
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5056
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    .line 5057
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5058
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    .line 5059
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5060
    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    .line 5061
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5062
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5184
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5185
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    .line 5187
    return-object p0
.end method

.method public clearFactor()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5205
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    .line 5208
    return-object p0
.end method

.method public clearTimeout()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5226
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    .line 5229
    return-object p0
.end method

.method public clearType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5163
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5164
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5166
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 2

    .prologue
    .line 5066
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1

    .prologue
    .line 5070
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 5175
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    return v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 5196
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    return v0
.end method

.method public getTimeout()Z
    .locals 1

    .prologue
    .line 5217
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    return v0
.end method

.method public getType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 5172
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

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

.method public hasFactor()Z
    .locals 2

    .prologue
    .line 5193
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

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

.method public hasTimeout()Z
    .locals 2

    .prologue
    .line 5214
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5148
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

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
    .line 5123
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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5037
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5130
    const/4 v1, 0x0

    .line 5132
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5137
    if-eqz v0, :cond_0

    .line 5138
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5141
    :cond_0
    return-object p0

    .line 5133
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5134
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5135
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5137
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 5138
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    :cond_1
    throw v0

    .line 5137
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5106
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5119
    :goto_0
    return-object v0

    .line 5107
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5108
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5110
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5111
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5113
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasFactor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5114
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getFactor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5116
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasTimeout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5117
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getTimeout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    :cond_4
    move-object v0, p0

    .line 5119
    goto :goto_0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5178
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5179
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    .line 5181
    return-object p0
.end method

.method public setFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5199
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5200
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    .line 5202
    return-object p0
.end method

.method public setTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5220
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5221
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    .line 5223
    return-object p0
.end method

.method public setType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5154
    if-nez p1, :cond_0

    .line 5155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5157
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5158
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5160
    return-object p0
.end method
