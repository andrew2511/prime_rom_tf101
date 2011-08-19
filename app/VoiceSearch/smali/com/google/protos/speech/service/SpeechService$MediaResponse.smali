.class public final Lcom/google/protos/speech/service/SpeechService$MediaResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MediaResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    }
.end annotation


# static fields
.field public static final MEDIA_RESPONSE_FIELD_NUMBER:I = 0x10

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MediaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaResponse;

.field public static final mediaResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$MediaResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21874
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 22053
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    .line 22054
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->initFields()V

    .line 22062
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->mediaResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 21846
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21891
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedIsInitialized:B

    .line 21905
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedSerializedSize:I

    .line 21847
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->initFields()V

    .line 21849
    const/4 v0, 0x0

    .line 21850
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 21851
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 21852
    packed-switch v1, :pswitch_data_0

    .line 21857
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 21859
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 21855
    goto :goto_0

    .line 21871
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->makeExtensionsImmutable()V

    .line 21873
    return-void

    .line 21865
    :catch_0
    move-exception v0

    .line 21866
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21871
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->makeExtensionsImmutable()V

    throw v0

    .line 21867
    :catch_1
    move-exception v0

    .line 21868
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

    .line 21852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 21824
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21829
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21891
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedIsInitialized:B

    .line 21905
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedSerializedSize:I

    .line 21831
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21824
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21832
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21891
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedIsInitialized:B

    .line 21905
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedSerializedSize:I

    .line 21832
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1

    .prologue
    .line 21836
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 21890
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1

    .prologue
    .line 21974
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->access$27300()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 21977
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21954
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21960
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21924
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21930
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21965
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21971
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21944
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21950
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21934
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21940
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21824
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1

    .prologue
    .line 21840
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$MediaResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21886
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 21907
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedSerializedSize:I

    .line 21908
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21912
    :goto_0
    return v0

    .line 21910
    :cond_0
    const/4 v0, 0x0

    .line 21911
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21893
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedIsInitialized:B

    .line 21894
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 21897
    :goto_0
    return v0

    .line 21894
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21896
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->memoizedIsInitialized:B

    move v0, v2

    .line 21897
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21824
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1

    .prologue
    .line 21975
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21824
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1

    .prologue
    .line 21979
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

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
    .line 21918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21902
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getSerializedSize()I

    .line 21903
    return-void
.end method
