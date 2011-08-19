.class public final Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ProtocolFeaturesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtocolFeatures"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    }
.end annotation


# static fields
.field public static final DICTATION_MODE_FIELD_NUMBER:I = 0x5

.field public static final ENABLE_ACK_FIELD_NUMBER:I = 0x1

.field public static final ENABLE_IN_PROGRESS_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final ENABLE_IN_PROGRESS_SYNTHESIZE_RESPONSE_FIELD_NUMBER:I = 0x6

.field public static final ENABLE_PARTIAL_RESULTS_FIELD_NUMBER:I = 0x8

.field public static final ENABLE_PROFANITY_FILTER_COMPATIBILITY_FIELD_NUMBER:I = 0x7

.field public static final ENABLE_RECOGNITION_ALTERNATES_FIELD_NUMBER:I = 0x4

.field public static final ENABLE_UNSOLICIT_DESTROY_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;


# instance fields
.field private bitField0_:I

.field private dictationMode_:Z

.field private enableAck_:Z

.field private enableInProgressResponse_:Z

.field private enableInProgressSynthesizeResponse_:Z

.field private enablePartialResults_:Z

.field private enableProfanityFilterCompatibility_:Z

.field private enableRecognitionAlternates_:Z

.field private enableUnsolicitDestroy_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    .line 1275
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    .line 1276
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->initFields()V

    .line 1277
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

    .line 638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 639
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->initFields()V

    .line 642
    const/4 v0, 0x0

    .line 643
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 644
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 645
    sparse-switch v1, :sswitch_data_0

    .line 650
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 652
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 648
    goto :goto_0

    .line 657
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->makeExtensionsImmutable()V

    throw v0

    .line 662
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 700
    :catch_1
    move-exception v0

    .line 701
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

    .line 667
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    goto :goto_0

    .line 672
    :sswitch_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    goto :goto_0

    .line 677
    :sswitch_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    goto :goto_0

    .line 682
    :sswitch_6
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    goto :goto_0

    .line 687
    :sswitch_7
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    goto/16 :goto_0

    .line 692
    :sswitch_8
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->makeExtensionsImmutable()V

    .line 706
    return-void

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 616
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 621
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 623
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 851
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 624
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 804
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    .line 805
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    .line 806
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    .line 807
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    .line 808
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    .line 809
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    .line 810
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    .line 811
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    .line 812
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->access$100()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1
    .parameter

    .prologue
    .line 955
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 902
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 908
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 912
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 918
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;

    return-object v0
.end method

.method public getDictationMode()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    return v0
.end method

.method public getEnableAck()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    return v0
.end method

.method public getEnableInProgressResponse()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    return v0
.end method

.method public getEnableInProgressSynthesizeResponse()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    return v0
.end method

.method public getEnableProfanityFilterCompatibility()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    return v0
.end method

.method public getEnableRecognitionAlternates()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    return v0
.end method

.method public getEnableUnsolicitDestroy()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 853
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    .line 854
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 890
    :goto_0
    return v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    .line 857
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 858
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 861
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 862
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 865
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 866
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 870
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 874
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 877
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 878
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    :cond_6
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 882
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 885
    :cond_7
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 886
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_8
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasDictationMode()Z
    .locals 2

    .prologue
    .line 767
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableAck()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 727
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableInProgressResponse()Z
    .locals 2

    .prologue
    .line 747
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableInProgressSynthesizeResponse()Z
    .locals 2

    .prologue
    .line 777
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnablePartialResults()Z
    .locals 2

    .prologue
    .line 797
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableProfanityFilterCompatibility()Z
    .locals 2

    .prologue
    .line 787
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableRecognitionAlternates()Z
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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

.method public hasEnableUnsolicitDestroy()Z
    .locals 2

    .prologue
    .line 737
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 815
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    .line 816
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 819
    :goto_0
    return v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 818
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->memoizedIsInitialized:B

    move v0, v2

    .line 819
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 953
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    .locals 1

    .prologue
    .line 957
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

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
    .line 896
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 824
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->getSerializedSize()I

    .line 825
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 826
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableAck_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 828
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 829
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableUnsolicitDestroy_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 831
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 832
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressResponse_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 834
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 835
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableRecognitionAlternates_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 837
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 838
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->dictationMode_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 840
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 841
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableInProgressSynthesizeResponse_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 843
    :cond_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 844
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enableProfanityFilterCompatibility_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 846
    :cond_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 847
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->enablePartialResults_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 849
    :cond_7
    return-void
.end method
