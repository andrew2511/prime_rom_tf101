.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionSlotValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    }
.end annotation


# static fields
.field public static final ALTERNATES_FIELD_NUMBER:I = 0x5

.field public static final CONTACTS_LIST_VALUE_FIELD_NUMBER:I = 0x3

.field public static final CONTACTS_WITH_ALTS_VALUE_FIELD_NUMBER:I = 0x6

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private contactsListValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private contactsWithAltsValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private intValue_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12975
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 13688
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 13689
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->initFields()V

    .line 13690
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 12901
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13093
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    .line 13140
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedSerializedSize:I

    .line 12902
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->initFields()V

    move v2, v1

    .line 12906
    :goto_0
    if-nez v1, :cond_1

    .line 12907
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12908
    sparse-switch v0, :sswitch_data_0

    .line 12913
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 12959
    goto :goto_0

    :sswitch_0
    move v0, v6

    move v1, v2

    .line 12911
    goto :goto_1

    .line 12920
    :sswitch_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    .line 12921
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 12922
    goto :goto_1

    .line 12925
    :sswitch_2
    and-int/lit8 v0, v2, 0x2

    if-eq v0, v5, :cond_8

    .line 12926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12927
    or-int/lit8 v0, v2, 0x2

    .line 12929
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v7, v1

    move v1, v0

    move v0, v7

    .line 12930
    goto :goto_1

    .line 12933
    :sswitch_3
    :try_start_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    .line 12934
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    move v0, v1

    move v1, v2

    .line 12935
    goto :goto_1

    .line 12938
    :sswitch_4
    const/4 v0, 0x0

    .line 12939
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v4, :cond_7

    .line 12940
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    move-object v3, v0

    .line 12942
    :goto_3
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 12943
    if-eqz v3, :cond_0

    .line 12944
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v3, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 12945
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 12947
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 12948
    goto :goto_1

    .line 12951
    :sswitch_5
    and-int/lit8 v0, v2, 0x4

    if-eq v0, v4, :cond_6

    .line 12952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 12953
    or-int/lit8 v0, v2, 0x4

    .line 12955
    :goto_4
    :try_start_3
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    .line 12966
    :cond_1
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v5, :cond_2

    .line 12967
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    .line 12969
    :cond_2
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v4, :cond_3

    .line 12970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    .line 12972
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->makeExtensionsImmutable()V

    .line 12974
    return-void

    .line 12960
    :catch_0
    move-exception v0

    move v1, v2

    .line 12961
    :goto_5
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12966
    :catchall_0
    move-exception v0

    :goto_6
    and-int/lit8 v2, v1, 0x2

    if-ne v2, v5, :cond_4

    .line 12967
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    .line 12969
    :cond_4
    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5

    .line 12970
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    .line 12972
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->makeExtensionsImmutable()V

    throw v0

    .line 12962
    :catch_1
    move-exception v0

    move v1, v2

    .line 12963
    :goto_7
    :try_start_5
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12966
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_6

    .line 12962
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_7

    .line 12960
    :catch_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move-object v3, v0

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 12908
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
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
    .line 12879
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12884
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13093
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    .line 13140
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedSerializedSize:I

    .line 12886
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13093
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    .line 13140
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedSerializedSize:I

    .line 12887
    return-void
.end method

.method static synthetic access$15700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12879
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 12879
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 12879
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    return p1
.end method

.method static synthetic access$16102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12879
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1

    .prologue
    .line 12891
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    .line 13088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    .line 13089
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    .line 13090
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    .line 13091
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 13092
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1

    .prologue
    .line 13229
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->access$15500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1
    .parameter

    .prologue
    .line 13232
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13209
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13215
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13179
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13185
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13220
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13226
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13199
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13205
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13189
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13195
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p0
.end method


# virtual methods
.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 13083
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1
    .parameter

    .prologue
    .line 13038
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object p0
.end method

.method public getContactsListValueCount()I
    .locals 1

    .prologue
    .line 13035
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactsListValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13028
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    return-object v0
.end method

.method public getContactsListValueOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 13042
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;

    return-object p0
.end method

.method public getContactsListValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13032
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    return-object v0
.end method

.method public getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 1
    .parameter

    .prologue
    .line 13059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    return-object p0
.end method

.method public getContactsWithAltsValueCount()I
    .locals 1

    .prologue
    .line 13056
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactsWithAltsValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13049
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    return-object v0
.end method

.method public getContactsWithAltsValueOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 13063
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;

    return-object p0
.end method

.method public getContactsWithAltsValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13053
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12879
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1

    .prologue
    .line 12895
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 13073
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12987
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 13142
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedSerializedSize:I

    .line 13143
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13167
    :goto_0
    return v0

    .line 13146
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 13147
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v4

    :goto_1
    move v1, v4

    move v2, v0

    .line 13150
    :goto_2
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 13151
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 13150
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 13154
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_4

    .line 13155
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 13158
    :goto_3
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 13159
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v4

    move v2, v0

    .line 13162
    :goto_4
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 13163
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 13162
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4

    .line 13166
    :cond_3
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedSerializedSize:I

    move v0, v2

    .line 13167
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12998
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    .line 12999
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13000
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13008
    :goto_0
    return-object v1

    .line 13002
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13004
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13005
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13006
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13008
    goto :goto_0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13013
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    .line 13014
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13015
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13017
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;

    .line 13020
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 13080
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

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

.method public hasIntValue()Z
    .locals 2

    .prologue
    .line 13070
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12995
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

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

    .line 13095
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    .line 13096
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 13117
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 13096
    goto :goto_0

    :cond_1
    move v0, v2

    .line 13098
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValueCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 13099
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13100
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    move v0, v2

    .line 13101
    goto :goto_0

    .line 13098
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 13104
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValueCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 13105
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13106
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    move v0, v2

    .line 13107
    goto :goto_0

    .line 13104
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13110
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13111
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13112
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    move v0, v2

    .line 13113
    goto :goto_0

    .line 13116
    :cond_6
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->memoizedIsInitialized:B

    move v0, v3

    .line 13117
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12879
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1

    .prologue
    .line 13230
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12879
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1

    .prologue
    .line 13234
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

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
    .line 13173
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 13122
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getSerializedSize()I

    .line 13123
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13124
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    move v1, v3

    .line 13126
    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 13127
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13129
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    .line 13130
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13132
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_3

    .line 13133
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_3
    move v1, v3

    .line 13135
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 13136
    const/4 v2, 0x6

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 13138
    :cond_4
    return-void
.end method
