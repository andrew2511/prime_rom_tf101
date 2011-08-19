.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final GRAMMARCONTEXT_FIELD_NUMBER:I = 0x4

.field public static final NLCONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private grammarContext_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nlconfidence_:I

.field private result_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$1;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 611
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    .line 612
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->initFields()V

    .line 613
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

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 57
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->initFields()V

    .line 60
    const/4 v0, 0x0

    .line 61
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 63
    sparse-switch v1, :sswitch_data_0

    .line 68
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 70
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 66
    goto :goto_0

    .line 75
    :sswitch_1
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->makeExtensionsImmutable()V

    throw v0

    .line 80
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    goto :goto_0

    .line 90
    :sswitch_4
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->makeExtensionsImmutable()V

    .line 104
    return-void

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
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
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 213
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 209
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    .line 210
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->access$100()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 335
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method


# virtual methods
.method public getConfidence()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method public getGrammarContext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 182
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 183
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 191
    :goto_0
    return-object v1

    .line 185
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 187
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iput-object v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 191
    goto :goto_0
.end method

.method public getGrammarContextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 203
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNlconfidence()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 129
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 130
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 138
    :goto_0
    return-object v1

    .line 132
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 134
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iput-object v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 138
    goto :goto_0
.end method

.method public getResultBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 249
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 250
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 270
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_1
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 258
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_2
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 262
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_3
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getGrammarContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_4
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasGrammarContext()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasNlconfidence()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    iget-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 216
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 227
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasResult()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    move v0, v2

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    move v0, v2

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    move v0, v3

    .line 227
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

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
    .line 276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getSerializedSize()I

    .line 233
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 236
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 237
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 239
    :cond_1
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 240
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 242
    :cond_2
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getGrammarContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 245
    :cond_3
    return-void
.end method
