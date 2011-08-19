.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BusinessResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13782
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 14297
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 14298
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->initFields()V

    .line 14299
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

    .line 13738
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13902
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    .line 13933
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedSerializedSize:I

    .line 13739
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->initFields()V

    .line 13742
    const/4 v0, 0x0

    .line 13743
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13744
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13745
    sparse-switch v1, :sswitch_data_0

    .line 13750
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 13752
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 13748
    goto :goto_0

    .line 13757
    :sswitch_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    .line 13758
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13773
    :catch_0
    move-exception v0

    .line 13774
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13779
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->makeExtensionsImmutable()V

    throw v0

    .line 13762
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    .line 13763
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13775
    :catch_1
    move-exception v0

    .line 13776
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

    .line 13767
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    .line 13768
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 13779
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->makeExtensionsImmutable()V

    .line 13781
    return-void

    .line 13745
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 13716
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13721
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13902
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    .line 13933
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedSerializedSize:I

    .line 13723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13716
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13724
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13902
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    .line 13933
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedSerializedSize:I

    .line 13724
    return-void
.end method

.method static synthetic access$16600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13716
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13716
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13716
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13716
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13716
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13716
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13716
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1

    .prologue
    .line 13728
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    .line 13899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    .line 13900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    .line 13901
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14014
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->access$16400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14017
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13994
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14000
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13964
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13970
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14005
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14011
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13984
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13990
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13974
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13980
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13871
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    .line 13872
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13873
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13881
    :goto_0
    return-object v1

    .line 13875
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13877
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13878
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13879
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13881
    goto :goto_0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13886
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    .line 13887
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13888
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13890
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;

    .line 13893
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13716
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1

    .prologue
    .line 13732
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13805
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    .line 13806
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13807
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13815
    :goto_0
    return-object v1

    .line 13809
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13811
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13812
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13813
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13815
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13820
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    .line 13821
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13822
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13824
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;

    .line 13827
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13794
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13838
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    .line 13839
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13840
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13848
    :goto_0
    return-object v1

    .line 13842
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13844
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13845
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13846
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13848
    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13853
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    .line 13854
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13855
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13857
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;

    .line 13860
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13935
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedSerializedSize:I

    .line 13936
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13952
    :goto_0
    return v0

    .line 13938
    :cond_0
    const/4 v0, 0x0

    .line 13939
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 13940
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13943
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 13944
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13947
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 13948
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13951
    :cond_3
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 13868
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

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

    .line 13802
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

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
    .line 13835
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13904
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    .line 13905
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 13916
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 13905
    goto :goto_0

    .line 13907
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13908
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    move v0, v2

    .line 13909
    goto :goto_0

    .line 13911
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13912
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    move v0, v2

    .line 13913
    goto :goto_0

    .line 13915
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->memoizedIsInitialized:B

    move v0, v3

    .line 13916
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13716
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14015
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13716
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .locals 1

    .prologue
    .line 14019
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

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
    .line 13958
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13921
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getSerializedSize()I

    .line 13922
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13923
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13925
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13928
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 13929
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13931
    :cond_2
    return-void
.end method
