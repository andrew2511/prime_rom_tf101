.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18569
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 18979
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    .line 18980
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->initFields()V

    .line 18981
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

    .line 18530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18655
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18531
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->initFields()V

    .line 18534
    const/4 v0, 0x0

    .line 18535
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 18536
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 18537
    sparse-switch v1, :sswitch_data_0

    .line 18542
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 18544
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 18540
    goto :goto_0

    .line 18549
    :sswitch_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    .line 18550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 18560
    :catch_0
    move-exception v0

    .line 18561
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18566
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->makeExtensionsImmutable()V

    throw v0

    .line 18554
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    .line 18555
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 18562
    :catch_1
    move-exception v0

    .line 18563
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

    .line 18566
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->makeExtensionsImmutable()V

    .line 18568
    return-void

    .line 18537
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 18508
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18513
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18655
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18515
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18508
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18516
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18655
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18516
    return-void
.end method

.method static synthetic access$21700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18508
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18508
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18508
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18508
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18508
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1

    .prologue
    .line 18520
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 18652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18654
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18760
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->access$21500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18763
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18740
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18746
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18710
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18716
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18751
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18757
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18730
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18736
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18720
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18726
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1

    .prologue
    .line 18524
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18592
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18593
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18594
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 18602
    :goto_0
    return-object v1

    .line 18596
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18598
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18599
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18600
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18602
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18607
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18608
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18609
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18611
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18614
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18581
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18685
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18686
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 18698
    :goto_0
    return v0

    .line 18688
    :cond_0
    const/4 v0, 0x0

    .line 18689
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 18690
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18693
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 18694
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18697
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18625
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18626
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18627
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 18635
    :goto_0
    return-object v1

    .line 18629
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18631
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18632
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18633
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 18635
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18640
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18641
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18642
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18644
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18647
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

    .line 18589
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

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
    .line 18622
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

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

    .line 18657
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18658
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 18669
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 18658
    goto :goto_0

    .line 18660
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18661
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    move v0, v2

    .line 18662
    goto :goto_0

    .line 18664
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18665
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    move v0, v2

    .line 18666
    goto :goto_0

    .line 18668
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    move v0, v3

    .line 18669
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18761
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18765
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18704
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

    .line 18674
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getSerializedSize()I

    .line 18675
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 18676
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18678
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 18679
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18681
    :cond_1
    return-void
.end method
