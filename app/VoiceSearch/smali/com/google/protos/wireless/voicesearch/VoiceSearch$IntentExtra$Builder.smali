.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18773
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->maybeForceBuilderInitialization()V

    .line 18774
    return-void
.end method

.method static synthetic access$21500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18779
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 18777
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 2

    .prologue
    .line 18800
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    .line 18801
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18802
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 18804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 5

    .prologue
    .line 18808
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 18809
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18810
    const/4 v2, 0x0

    .line 18811
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18812
    or-int/lit8 v2, v2, 0x1

    .line 18814
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18815
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 18816
    or-int/lit8 v1, v2, 0x2

    .line 18818
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18819
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;I)I

    .line 18820
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18783
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18785
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18787
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18788
    return-object p0
.end method

.method public clearName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18906
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18907
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18909
    return-object p0
.end method

.method public clearValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18959
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18960
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18962
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 2

    .prologue
    .line 18792
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1

    .prologue
    .line 18796
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18875
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18876
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18877
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18878
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18881
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18886
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18887
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18888
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18890
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18893
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18928
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18929
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18930
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18931
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18934
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18939
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18940
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18941
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18943
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18946
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18872
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 18925
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

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

    .line 18839
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 18847
    :goto_0
    return v0

    .line 18843
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 18845
    goto :goto_0

    .line 18847
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
    .line 18767
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18767
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18767
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18854
    const/4 v1, 0x0

    .line 18856
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18861
    if-eqz v0, :cond_0

    .line 18862
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    .line 18865
    :cond_0
    return-object p0

    .line 18857
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18858
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18859
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18861
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 18862
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    :cond_1
    throw v0

    .line 18861
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18824
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 18835
    :goto_0
    return-object v0

    .line 18825
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18826
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18827
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18830
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18831
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18832
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 18835
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18897
    if-nez p1, :cond_0

    .line 18898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18900
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18901
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18903
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18913
    if-nez p1, :cond_0

    .line 18914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18916
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18917
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18919
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18950
    if-nez p1, :cond_0

    .line 18951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18953
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18954
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18956
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18966
    if-nez p1, :cond_0

    .line 18967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18969
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18972
    return-object p0
.end method
