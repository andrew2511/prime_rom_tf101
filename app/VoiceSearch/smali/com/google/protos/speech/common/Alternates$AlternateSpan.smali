.class public final Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    }
.end annotation


# static fields
.field public static final ALTERNATES_FIELD_NUMBER:I = 0x3

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x4

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 942
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    .line 1433
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 1434
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    .line 1435
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x4

    .line 887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1015
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1055
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 888
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    move v0, v1

    .line 892
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 893
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 894
    sparse-switch v2, :sswitch_data_0

    .line 899
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 901
    goto :goto_0

    :sswitch_0
    move v0, v5

    .line 897
    goto :goto_0

    .line 906
    :sswitch_1
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_1

    .line 937
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    throw v0

    .line 911
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 932
    :catch_1
    move-exception v0

    .line 933
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

    .line 916
    :sswitch_3
    and-int/lit8 v2, v1, 0x4

    if-eq v2, v4, :cond_2

    .line 917
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 918
    or-int/lit8 v1, v1, 0x4

    .line 920
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 924
    :sswitch_4
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 936
    :cond_3
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v4, :cond_4

    .line 937
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 939
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    .line 941
    return-void

    .line 894
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
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
    .line 865
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 870
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1015
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1055
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 872
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1015
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1055
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 873
    return-void
.end method

.method static synthetic access$1502(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return p1
.end method

.method static synthetic access$1700(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/common/Alternates$AlternateSpan;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/protos/speech/common/Alternates$AlternateSpan;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return p1
.end method

.method static synthetic access$1902(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 877
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1010
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    .line 1011
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    .line 1012
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 1014
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1140
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->access$1300()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1143
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1090
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1096
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1100
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1106
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method


# virtual methods
.method public getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public getAlternatesCount()I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method public getAlternatesOrBuilder(I)Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;

    return-object p0
.end method

.method public getAlternatesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1057
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1058
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1078
    :goto_0
    return v0

    .line 1061
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 1062
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 1065
    :goto_1
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 1066
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    move v2, v0

    .line 1069
    :goto_2
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1070
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1069
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 1073
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    .line 1074
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v0, v2

    .line 1077
    :goto_3
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

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

.method public hasLength()Z
    .locals 2

    .prologue
    .line 972
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 962
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

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

    .line 1017
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1018
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1035
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1018
    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1021
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v0, v2

    .line 1022
    goto :goto_0

    .line 1024
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1025
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v0, v2

    .line 1026
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1028
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1029
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1030
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v0, v2

    .line 1031
    goto :goto_0

    .line 1028
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1034
    :cond_5
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v0, v3

    .line 1035
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1145
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1084
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

    .line 1040
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getSerializedSize()I

    .line 1041
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1042
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1044
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1045
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1047
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1048
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1047
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1050
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 1051
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1053
    :cond_3
    return-void
.end method
