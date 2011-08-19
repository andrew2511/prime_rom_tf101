.class public final Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectedAlternateSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    }
.end annotation


# static fields
.field public static final LENGTH_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOGNIZED_TEXT_FIELD_NUMBER:I = 0x4

.field public static final SEGMENT_UTTERANCE_ID_FIELD_NUMBER:I = 0x6

.field public static final SELECTED_TEXT_FIELD_NUMBER:I = 0x5

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final UNIT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;


# instance fields
.field private bitField0_:I

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognizedText_:Ljava/lang/Object;

.field private segmentUtteranceId_:I

.field private selectedText_:Ljava/lang/Object;

.field private start_:I

.field private unit_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2685
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    .line 3271
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    .line 3272
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->initFields()V

    .line 3273
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

    .line 2626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2815
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2847
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2627
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->initFields()V

    .line 2630
    const/4 v0, 0x0

    .line 2631
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2632
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2633
    sparse-switch v1, :sswitch_data_0

    .line 2638
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2640
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 2636
    goto :goto_0

    .line 2645
    :sswitch_1
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2676
    :catch_0
    move-exception v0

    .line 2677
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2682
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->makeExtensionsImmutable()V

    throw v0

    .line 2650
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2651
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2678
    :catch_1
    move-exception v0

    .line 2679
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

    .line 2655
    :sswitch_3
    :try_start_4
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    goto :goto_0

    .line 2660
    :sswitch_4
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    goto :goto_0

    .line 2665
    :sswitch_5
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    goto :goto_0

    .line 2670
    :sswitch_6
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    .line 2671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2682
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->makeExtensionsImmutable()V

    .line 2684
    return-void

    .line 2633
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
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
    .line 2604
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2609
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2815
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2847
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2611
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2612
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2815
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2847
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2612
    return-void
.end method

.method static synthetic access$3702(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    return p1
.end method

.method static synthetic access$3802(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    return p1
.end method

.method static synthetic access$4000(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1

    .prologue
    .line 2616
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2808
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    .line 2809
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    .line 2810
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    .line 2811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2813
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I

    .line 2814
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->access$3500()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2943
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2920
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2926
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2890
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2896
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2931
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2937
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2910
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2916
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2900
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2906
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1

    .prologue
    .line 2620
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2728
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2697
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecognizedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2738
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2739
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2740
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2748
    :goto_0
    return-object v1

    .line 2742
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2744
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2745
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2746
    iput-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2748
    goto :goto_0
.end method

.method public getRecognizedTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2754
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2755
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2757
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;

    .line 2760
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSegmentUtteranceId()I
    .locals 1

    .prologue
    .line 2804
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2771
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2772
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2773
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2781
    :goto_0
    return-object v1

    .line 2775
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2777
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2778
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2779
    iput-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2781
    goto :goto_0
.end method

.method public getSelectedTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2787
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2788
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2790
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;

    .line 2793
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

    .line 2849
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    .line 2850
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2878
    :goto_0
    return v0

    .line 2852
    :cond_0
    const/4 v0, 0x0

    .line 2853
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2854
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2857
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2858
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2861
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2862
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2865
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2866
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getRecognizedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2869
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2870
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSelectedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2873
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2874
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2877
    :cond_6
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2718
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 2708
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .locals 2

    .prologue
    .line 2725
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasRecognizedText()Z
    .locals 2

    .prologue
    .line 2735
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasSegmentUtteranceId()Z
    .locals 2

    .prologue
    .line 2801
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasSelectedText()Z
    .locals 2

    .prologue
    .line 2768
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    .line 2715
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

.method public hasUnit()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2705
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

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

    .line 2817
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    .line 2818
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2821
    :goto_0
    return v0

    .line 2818
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2820
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->memoizedIsInitialized:B

    move v0, v2

    .line 2821
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2941
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2945
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2884
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

    .line 2826
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSerializedSize()I

    .line 2827
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2828
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2830
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2831
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2833
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2834
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2836
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2837
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getRecognizedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2839
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2840
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getSelectedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2842
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2843
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2845
    :cond_5
    return-void
.end method
