.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisVoice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    }
.end annotation


# static fields
.field public static final ENGINE_FIELD_NUMBER:I = 0x5

.field public static final GENDER_FIELD_NUMBER:I = 0x2

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_RATE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;


# instance fields
.field private bitField0_:I

.field private engine_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private sampleRate_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17627
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    .line 18287
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .line 18288
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->initFields()V

    .line 18289
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

    .line 17573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17792
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17574
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->initFields()V

    .line 17577
    const/4 v0, 0x0

    .line 17578
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 17579
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 17580
    sparse-switch v1, :sswitch_data_0

    .line 17585
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 17587
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 17583
    goto :goto_0

    .line 17592
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 17618
    :catch_0
    move-exception v0

    .line 17619
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17624
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->makeExtensionsImmutable()V

    throw v0

    .line 17597
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 17620
    :catch_1
    move-exception v0

    .line 17621
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

    .line 17602
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17603
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 17607
    :sswitch_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17608
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    goto :goto_0

    .line 17612
    :sswitch_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    .line 17613
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 17624
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->makeExtensionsImmutable()V

    .line 17626
    return-void

    .line 17580
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
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
    .line 17551
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17556
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17792
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17558
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17792
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17825
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17559
    return-void
.end method

.method static synthetic access$21600(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21602(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21700(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21802(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    return p1
.end method

.method static synthetic access$22000(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22102(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17551
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 17563
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 17786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    .line 17790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17791
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17914
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->access$21400()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17917
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17894
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17900
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17864
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17870
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17905
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17911
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17884
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17890
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17874
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17880
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 17567
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public getEngine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17759
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17760
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17761
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17769
    :goto_0
    return-object v1

    .line 17763
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17765
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17766
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17767
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17769
    goto :goto_0
.end method

.method public getEngineBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17774
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17775
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17776
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17778
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;

    .line 17781
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getGender()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17683
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17684
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17685
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17693
    :goto_0
    return-object v1

    .line 17687
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17689
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17690
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17691
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17693
    goto :goto_0
.end method

.method public getGenderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17698
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17700
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17702
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;

    .line 17705
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17650
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17651
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17652
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17660
    :goto_0
    return-object v1

    .line 17654
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17656
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17657
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17658
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17660
    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17665
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17666
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17667
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17669
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;

    .line 17672
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17716
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17717
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17718
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17726
    :goto_0
    return-object v1

    .line 17720
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17722
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17723
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17724
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17726
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17731
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17732
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17733
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17735
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;

    .line 17738
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
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17639
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 17749
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 17827
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    .line 17828
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17852
    :goto_0
    return v0

    .line 17830
    :cond_0
    const/4 v0, 0x0

    .line 17831
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 17832
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17835
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 17836
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17839
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 17840
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17843
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 17844
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17847
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 17848
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getEngineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17851
    :cond_5
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasEngine()Z
    .locals 2

    .prologue
    .line 17756
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGender()Z
    .locals 2

    .prologue
    .line 17680
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17647
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 17713
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public hasSampleRate()Z
    .locals 2

    .prologue
    .line 17746
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 17794
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    .line 17795
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 17802
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 17795
    goto :goto_0

    .line 17797
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17798
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    move v0, v3

    .line 17799
    goto :goto_0

    .line 17801
    :cond_2
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->memoizedIsInitialized:B

    move v0, v2

    .line 17802
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17915
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17919
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17858
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

    .line 17807
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getSerializedSize()I

    .line 17808
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 17809
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17811
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 17812
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getGenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17814
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 17815
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17817
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 17818
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17820
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 17821
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getEngineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17823
    :cond_4
    return-void
.end method
