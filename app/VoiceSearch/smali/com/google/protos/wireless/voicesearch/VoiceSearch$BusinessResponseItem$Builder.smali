.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14027
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 14028
    return-void
.end method

.method static synthetic access$16400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14033
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14031
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 2

    .prologue
    .line 14056
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    .line 14057
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14058
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14060
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 5

    .prologue
    .line 14064
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 14065
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14066
    const/4 v2, 0x0

    .line 14067
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14068
    or-int/lit8 v2, v2, 0x1

    .line 14070
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14071
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14072
    or-int/lit8 v2, v2, 0x2

    .line 14074
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14075
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 14076
    or-int/lit8 v1, v2, 0x4

    .line 14078
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14079
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;I)I

    .line 14080
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14037
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14039
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14041
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14043
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14044
    return-object p0
.end method

.method public clearAddress()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14277
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14278
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14280
    return-object p0
.end method

.method public clearName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14171
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14172
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14174
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14224
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14225
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14227
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 2

    .prologue
    .line 14048
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

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
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14246
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14247
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14248
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14249
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14252
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14257
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14258
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14259
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14261
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14264
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1

    .prologue
    .line 14052
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14140
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14141
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14142
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14143
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14146
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14151
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14152
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14153
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14155
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14158
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14193
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14194
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14195
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14196
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14199
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14204
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14206
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14208
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14211
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 14243
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14137
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 2

    .prologue
    .line 14190
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14104
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 14112
    :goto_0
    return v0

    .line 14108
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->hasPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 14110
    goto :goto_0

    .line 14112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 14021
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14021
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

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
    .line 14021
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14119
    const/4 v1, 0x0

    .line 14121
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14126
    if-eqz v0, :cond_0

    .line 14127
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    .line 14130
    :cond_0
    return-object p0

    .line 14122
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 14123
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14124
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14126
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14127
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    :cond_1
    throw v0

    .line 14126
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14084
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 14100
    :goto_0
    return-object v0

    .line 14085
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14086
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14087
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14090
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14091
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14092
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14095
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14096
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14097
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    .line 14100
    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14268
    if-nez p1, :cond_0

    .line 14269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14271
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14272
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14274
    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14284
    if-nez p1, :cond_0

    .line 14285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14287
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14288
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14290
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14162
    if-nez p1, :cond_0

    .line 14163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14165
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14166
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14168
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14178
    if-nez p1, :cond_0

    .line 14179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14181
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14182
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14184
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14215
    if-nez p1, :cond_0

    .line 14216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14218
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14219
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14221
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14231
    if-nez p1, :cond_0

    .line 14232
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14234
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14235
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14237
    return-object p0
.end method
