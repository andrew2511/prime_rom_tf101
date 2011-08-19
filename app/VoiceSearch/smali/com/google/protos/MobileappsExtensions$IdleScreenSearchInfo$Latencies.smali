.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Latencies"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    }
.end annotation


# static fields
.field public static final DURATION_MS_FIELD_NUMBER:I = 0x28

.field public static final FACTOR_FIELD_NUMBER:I = 0x29

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x2a

.field public static final TYPE_FIELD_NUMBER:I = 0x27

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private factor_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timeout_:Z

.field private type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4857
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    .line 5236
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    .line 5237
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->initFields()V

    .line 5238
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 4804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4919
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4945
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4805
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->initFields()V

    .line 4808
    const/4 v0, 0x0

    .line 4809
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4810
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4811
    sparse-switch v1, :sswitch_data_0

    .line 4816
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 4818
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 4814
    goto :goto_0

    .line 4823
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 4824
    invoke-static {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v1

    .line 4825
    if-eqz v1, :cond_0

    .line 4826
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4827
    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4848
    :catch_0
    move-exception v0

    .line 4849
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4854
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->makeExtensionsImmutable()V

    throw v0

    .line 4832
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4833
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4850
    :catch_1
    move-exception v0

    .line 4851
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

    .line 4837
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4838
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    goto :goto_0

    .line 4842
    :sswitch_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4843
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 4854
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->makeExtensionsImmutable()V

    .line 4856
    return-void

    .line 4811
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x138 -> :sswitch_1
        0x140 -> :sswitch_2
        0x148 -> :sswitch_3
        0x150 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 4782
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4787
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4919
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4945
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4789
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4919
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4945
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4790
    return-void
.end method

.method static synthetic access$4202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4782
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1

    .prologue
    .line 4794
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4914
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4915
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    .line 4916
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    .line 4917
    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    .line 4918
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5030
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->access$4000()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5033
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5010
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5016
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4980
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4986
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5021
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5027
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5000
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5006
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4990
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4996
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4782
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1

    .prologue
    .line 4798
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 4890
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    return v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 4900
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4869
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4947
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4948
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4968
    :goto_0
    return v0

    .line 4950
    :cond_0
    const/4 v0, 0x0

    .line 4951
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4952
    const/16 v1, 0x27

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4955
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4956
    const/16 v1, 0x28

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4959
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 4960
    const/16 v1, 0x29

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4963
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 4964
    const/16 v1, 0x2a

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4967
    :cond_4
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTimeout()Z
    .locals 1

    .prologue
    .line 4910
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    return v0
.end method

.method public getType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 4880
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 4887
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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
    .line 4897
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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
    .line 4907
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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

    .line 4877
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4921
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4922
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 4925
    :goto_0
    return v0

    .line 4922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4924
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    move v0, v2

    .line 4925
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4782
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5031
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4782
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5035
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 4974
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4930
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getSerializedSize()I

    .line 4931
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4932
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4934
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4935
    const/16 v0, 0x28

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4937
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4938
    const/16 v0, 0x29

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4940
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4941
    const/16 v0, 0x2a

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4943
    :cond_3
    return-void
.end method
