.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultSetProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCEHIGHTHRESHOLD_FIELD_NUMBER:I = 0x2

.field public static final CONFIDENCELOWTHRESHOLD_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULTS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;


# instance fields
.field private bitField0_:I

.field private confidencehighthreshold_:I

.field private confidencelowthreshold_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1134
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 1135
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    .line 1136
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    .line 657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 658
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    move v0, v1

    .line 662
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 663
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 664
    sparse-switch v2, :sswitch_data_0

    .line 669
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 671
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 667
    goto :goto_0

    .line 676
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 678
    or-int/lit8 v1, v1, 0x1

    .line 680
    :cond_1
    iget-object v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 702
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    throw v0

    .line 684
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 697
    :catch_1
    move-exception v0

    .line 698
    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 689
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 701
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 702
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    .line 706
    return-void

    .line 664
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 640
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 643
    return-void
.end method

.method static synthetic access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 766
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    .line 767
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    .line 768
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 879
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->access$900()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 882
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 829
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 839
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 845
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p0
.end method


# virtual methods
.method public getConfidencehighthreshold()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return v0
.end method

.method public getConfidencelowthreshold()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public getResultsCount()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;

    return-object p0
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 801
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 817
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 804
    :goto_1
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 804
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 808
    :cond_1
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 809
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 812
    :goto_2
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 813
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    :cond_2
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public hasConfidencehighthreshold()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 748
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidencelowthreshold()Z
    .locals 2

    .prologue
    .line 758
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

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

    .line 771
    iget-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 772
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 781
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 772
    goto :goto_0

    :cond_1
    move v0, v2

    .line 774
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResultsCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 776
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    move v0, v2

    .line 777
    goto :goto_0

    .line 774
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    move v0, v3

    .line 781
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 880
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 884
    invoke-static {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 823
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getSerializedSize()I

    .line 787
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 787
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 790
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 791
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 793
    :cond_1
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2

    .line 794
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 796
    :cond_2
    return-void
.end method
