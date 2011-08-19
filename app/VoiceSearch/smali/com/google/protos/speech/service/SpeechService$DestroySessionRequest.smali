.class public final Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DestroySessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DestroySessionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    }
.end annotation


# static fields
.field public static final DESTROY_SESSION_REQUEST_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

.field public static final destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
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
    .line 12910
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 13089
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    .line 13090
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->initFields()V

    .line 13098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 12882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12927
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12883
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->initFields()V

    .line 12885
    const/4 v0, 0x0

    .line 12886
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 12887
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12888
    packed-switch v1, :pswitch_data_0

    .line 12893
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 12895
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 12891
    goto :goto_0

    .line 12907
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->makeExtensionsImmutable()V

    .line 12909
    return-void

    .line 12901
    :catch_0
    move-exception v0

    .line 12902
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12907
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->makeExtensionsImmutable()V

    throw v0

    .line 12903
    :catch_1
    move-exception v0

    .line 12904
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

    .line 12888
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
    .line 12860
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12865
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12927
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12867
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12860
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12868
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12927
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12868
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1

    .prologue
    .line 12872
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 12926
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1

    .prologue
    .line 13010
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->access$15200()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 13013
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12990
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12996
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12960
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12966
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13001
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13007
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12980
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12986
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12970
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12976
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1

    .prologue
    .line 12876
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12922
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 12943
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12944
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12948
    :goto_0
    return v0

    .line 12946
    :cond_0
    const/4 v0, 0x0

    .line 12947
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12929
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12930
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 12933
    :goto_0
    return v0

    .line 12930
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12932
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 12933
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1

    .prologue
    .line 13011
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1

    .prologue
    .line 13015
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

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
    .line 12954
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
    .line 12938
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getSerializedSize()I

    .line 12939
    return-void
.end method
