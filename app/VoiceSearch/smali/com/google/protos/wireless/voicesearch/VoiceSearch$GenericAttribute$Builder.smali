.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttributeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttributeOrBuilder;"
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
    .line 1911
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 1912
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->maybeForceBuilderInitialization()V

    .line 1913
    return-void
.end method

.method static synthetic access$1700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1918
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1916
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 2

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    .line 1940
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1941
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1943
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 5

    .prologue
    .line 1947
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 1948
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 1949
    const/4 v2, 0x0

    .line 1950
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1951
    or-int/lit8 v2, v2, 0x1

    .line 1953
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->access$1902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1955
    or-int/lit8 v1, v2, 0x2

    .line 1957
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->access$2002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->access$2102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;I)I

    .line 1959
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1922
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 1924
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 1925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 1926
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 1927
    return-object p0
.end method

.method public clearName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 2045
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2046
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2048
    return-object p0
.end method

.method public clearValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 2098
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2099
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2101
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 2

    .prologue
    .line 1931
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

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
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 1

    .prologue
    .line 1935
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2015
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2016
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2017
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2020
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2026
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2027
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2029
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2032
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2068
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2069
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2070
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2073
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2079
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2080
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2082
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2085
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

    .line 2011
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

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
    .line 2064
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

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

    .line 1978
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1986
    :goto_0
    return v0

    .line 1982
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1984
    goto :goto_0

    .line 1986
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
    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1906
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

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
    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1993
    const/4 v1, 0x0

    .line 1995
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2000
    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    .line 2004
    :cond_0
    return-object p0

    .line 1996
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1997
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1998
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2000
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2001
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    :cond_1
    throw v0

    .line 2000
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1963
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1974
    :goto_0
    return-object v0

    .line 1964
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 1966
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->access$1900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 1969
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1970
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 1971
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->access$2000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 1974
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2036
    if-nez p1, :cond_0

    .line 2037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2039
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2040
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2042
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2052
    if-nez p1, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2055
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2056
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->name_:Ljava/lang/Object;

    .line 2058
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2092
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2093
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2095
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2105
    if-nez p1, :cond_0

    .line 2106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2108
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->bitField0_:I

    .line 2109
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->value_:Ljava/lang/Object;

    .line 2111
    return-object p0
.end method
