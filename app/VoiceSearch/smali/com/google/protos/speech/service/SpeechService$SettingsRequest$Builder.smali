.class public final Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequest;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

.field private deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16913
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17054
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16914
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 16915
    return-void
.end method

.method static synthetic access$20200()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16920
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16918
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 2

    .prologue
    .line 16941
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    .line 16942
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16943
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16945
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 5

    .prologue
    .line 16949
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 16950
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16951
    const/4 v2, 0x0

    .line 16952
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16953
    or-int/lit8 v2, v2, 0x1

    .line 16955
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20402(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16956
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 16957
    or-int/lit8 v1, v2, 0x2

    .line 16959
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20502(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16960
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20602(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;I)I

    .line 16961
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16924
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16926
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16927
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16928
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16929
    return-object p0
.end method

.method public clearDeprecatedGaiaAuthenticationToken()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 17037
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17038
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDeprecatedGaiaAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17040
    return-object p0
.end method

.method public clearDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 17071
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17072
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 17074
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 2

    .prologue
    .line 16933
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

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
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 1

    .prologue
    .line 16937
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedGaiaAuthenticationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17006
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17007
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17008
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17009
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17012
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeprecatedGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17017
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17018
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17019
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17021
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17024
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 1

    .prologue
    .line 17059
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    return-object v0
.end method

.method public hasDeprecatedGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17003
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecatedPersonalizationOptIn()Z
    .locals 2

    .prologue
    .line 17056
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

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
    .line 16978
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
    .line 16908
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16908
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

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
    .line 16908
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16985
    const/4 v1, 0x0

    .line 16987
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16992
    if-eqz v0, :cond_0

    .line 16993
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    .line 16996
    :cond_0
    return-object p0

    .line 16988
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16989
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16990
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16992
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 16993
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    :cond_1
    throw v0

    .line 16992
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16965
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16974
    :goto_0
    return-object v0

    .line 16966
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->hasDeprecatedGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16967
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16968
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20400(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16971
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->hasDeprecatedPersonalizationOptIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16972
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->setDeprecatedPersonalizationOptIn(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    :cond_2
    move-object v0, p0

    .line 16974
    goto :goto_0
.end method

.method public setDeprecatedGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17028
    if-nez p1, :cond_0

    .line 17029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17031
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17032
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17034
    return-object p0
.end method

.method public setDeprecatedGaiaAuthenticationTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17044
    if-nez p1, :cond_0

    .line 17045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17047
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17048
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17050
    return-object p0
.end method

.method public setDeprecatedPersonalizationOptIn(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17062
    if-nez p1, :cond_0

    .line 17063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17065
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17066
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 17068
    return-object p0
.end method
