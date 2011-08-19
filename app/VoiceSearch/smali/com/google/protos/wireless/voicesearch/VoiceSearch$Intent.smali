.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final CATEGORY_FIELD_NUMBER:I = 0x5

.field public static final COMPONENT_NAME_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static final DATA_TYPE_FIELD_NUMBER:I = 0x4

.field public static final EXTRA_FIELD_NUMBER:I = 0x6

.field public static final FLAG_FIELD_NUMBER:I = 0x7

.field public static final HDPI_COUNTDOWN_ICON_URL_FIELD_NUMBER:I = 0x8

.field public static final HDPI_LIST_ITEM_ICON_URL_FIELD_NUMBER:I = 0xa

.field public static final MDPI_COUNTDOWN_ICON_URL_FIELD_NUMBER:I = 0x9

.field public static final MDPI_LIST_ITEM_ICON_URL_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;


# instance fields
.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private category_:Lcom/google/protobuf/LazyStringList;

.field private componentName_:Ljava/lang/Object;

.field private dataType_:Ljava/lang/Object;

.field private data_:Ljava/lang/Object;

.field private extra_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end field

.field private flag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hdpiCountdownIconUrl_:Ljava/lang/Object;

.field private hdpiListItemIconUrl_:Ljava/lang/Object;

.field private mdpiCountdownIconUrl_:Ljava/lang/Object;

.field private mdpiListItemIconUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17107
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    .line 18486
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 18487
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->initFields()V

    .line 18488
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
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v7, 0x20

    const/16 v6, 0x10

    const/16 v5, 0x40

    .line 16992
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17453
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    .line 17510
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedSerializedSize:I

    .line 16993
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->initFields()V

    move v0, v1

    .line 16997
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 16998
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 16999
    sparse-switch v2, :sswitch_data_0

    .line 17004
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17006
    const/4 v0, 0x1

    goto :goto_0

    .line 17001
    :sswitch_0
    const/4 v0, 0x1

    .line 17002
    goto :goto_0

    .line 17011
    :sswitch_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17012
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 17089
    :catch_0
    move-exception v0

    .line 17090
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17095
    :catchall_0
    move-exception v0

    and-int/lit8 v2, v1, 0x10

    if-ne v2, v6, :cond_1

    .line 17096
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17098
    :cond_1
    and-int/lit8 v2, v1, 0x20

    if-ne v2, v7, :cond_2

    .line 17099
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    .line 17101
    :cond_2
    and-int/lit8 v1, v1, 0x40

    if-ne v1, v5, :cond_3

    .line 17102
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    .line 17104
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->makeExtensionsImmutable()V

    throw v0

    .line 17016
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 17091
    :catch_1
    move-exception v0

    .line 17092
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

    .line 17021
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 17026
    :sswitch_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17027
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17031
    :sswitch_5
    and-int/lit8 v2, v1, 0x10

    if-eq v2, v6, :cond_4

    .line 17032
    new-instance v2, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17033
    or-int/lit8 v1, v1, 0x10

    .line 17035
    :cond_4
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 17039
    :sswitch_6
    and-int/lit8 v2, v1, 0x20

    if-eq v2, v7, :cond_5

    .line 17040
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    .line 17041
    or-int/lit8 v1, v1, 0x20

    .line 17043
    :cond_5
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17047
    :sswitch_7
    and-int/lit8 v2, v1, 0x40

    if-eq v2, v5, :cond_6

    .line 17048
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    .line 17049
    or-int/lit8 v1, v1, 0x40

    .line 17051
    :cond_6
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17055
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 17056
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v2

    .line 17057
    and-int/lit8 v3, v1, 0x40

    if-eq v3, v5, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_7

    .line 17058
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    .line 17059
    or-int/lit8 v1, v1, 0x40

    .line 17061
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_8

    .line 17062
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17064
    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 17068
    :sswitch_9
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17069
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17073
    :sswitch_a
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17074
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17078
    :sswitch_b
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17079
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17083
    :sswitch_c
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    .line 17084
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 17095
    :cond_9
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v6, :cond_a

    .line 17096
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17098
    :cond_a
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v7, :cond_b

    .line 17099
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    .line 17101
    :cond_b
    and-int/lit8 v0, v1, 0x40

    if-ne v0, v5, :cond_c

    .line 17102
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    .line 17104
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->makeExtensionsImmutable()V

    .line 17106
    return-void

    .line 16999
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_8
        0x3d -> :sswitch_7
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
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
    .line 16970
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16975
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17453
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    .line 17510
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedSerializedSize:I

    .line 16977
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16978
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17453
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    .line 17510
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedSerializedSize:I

    .line 16978
    return-void
.end method

.method static synthetic access$20200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$20602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16970
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16970
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 16982
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 17441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    .line 17442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    .line 17443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    .line 17444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    .line 17445
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17446
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    .line 17447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    .line 17448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17449
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17452
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17630
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->access$20000()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17633
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17610
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17616
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17580
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17586
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17621
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17627
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17600
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17606
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17590
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17596
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17163
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    .line 17164
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17165
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17173
    :goto_0
    return-object v1

    .line 17167
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17169
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17170
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17171
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17173
    goto :goto_0
.end method

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17178
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    .line 17179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17180
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17182
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->action_:Ljava/lang/Object;

    .line 17185
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCategory(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17266
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCategoryBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 17270
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 17263
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17260
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17130
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    .line 17131
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17132
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17140
    :goto_0
    return-object v1

    .line 17134
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17136
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17137
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17138
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17140
    goto :goto_0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17145
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    .line 17146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17147
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17149
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->componentName_:Ljava/lang/Object;

    .line 17152
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17196
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    .line 17197
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17198
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17206
    :goto_0
    return-object v1

    .line 17200
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17202
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17203
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17204
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17206
    goto :goto_0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17211
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    .line 17212
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17213
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17215
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->data_:Ljava/lang/Object;

    .line 17218
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17229
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    .line 17230
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17231
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17239
    :goto_0
    return-object v1

    .line 17233
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17235
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17236
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17237
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17239
    goto :goto_0
.end method

.method public getDataTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17244
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    .line 17245
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17246
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17248
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->dataType_:Ljava/lang/Object;

    .line 17251
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16970
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 16986
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object v0
.end method

.method public getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter

    .prologue
    .line 17287
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public getExtraCount()I
    .locals 1

    .prologue
    .line 17284
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtraList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17277
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    return-object v0
.end method

.method public getExtraOrBuilder(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 17291
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;

    return-object p0
.end method

.method public getExtraOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17281
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    return-object v0
.end method

.method public getFlag(I)I
    .locals 1
    .parameter

    .prologue
    .line 17305
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFlagCount()I
    .locals 1

    .prologue
    .line 17302
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17299
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    return-object v0
.end method

.method public getHdpiCountdownIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17315
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17316
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17317
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17325
    :goto_0
    return-object v1

    .line 17319
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17321
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17322
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17323
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17325
    goto :goto_0
.end method

.method public getHdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17330
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17331
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17332
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17334
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17337
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHdpiListItemIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17381
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17382
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17383
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17391
    :goto_0
    return-object v1

    .line 17385
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17387
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17388
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17389
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17391
    goto :goto_0
.end method

.method public getHdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17396
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17398
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17400
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17403
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMdpiCountdownIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17348
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17349
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17350
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17358
    :goto_0
    return-object v1

    .line 17352
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17354
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17355
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17356
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17358
    goto :goto_0
.end method

.method public getMdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17363
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17364
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17365
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17367
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17370
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMdpiListItemIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17414
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17415
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17416
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17424
    :goto_0
    return-object v1

    .line 17418
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17420
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17421
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17422
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17424
    goto :goto_0
.end method

.method public getMdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17429
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17431
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17433
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17436
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17119
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 17512
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedSerializedSize:I

    .line 17513
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17568
    :goto_0
    return v0

    .line 17516
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_a

    .line 17517
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v4

    .line 17520
    :goto_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 17521
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17524
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 17525
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17528
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 17529
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDataTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    move v1, v4

    move v2, v4

    .line 17534
    :goto_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 17535
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 17534
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17538
    :cond_4
    add-int/2addr v0, v2

    .line 17539
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    move v1, v4

    move v2, v0

    .line 17541
    :goto_3
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 17542
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 17541
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    .line 17547
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getFlagList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 17548
    add-int/2addr v0, v2

    .line 17549
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getFlagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 17551
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 17552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17555
    :cond_6
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    .line 17556
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17559
    :cond_7
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_8

    .line 17560
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17563
    :cond_8
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_9

    .line 17564
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17567
    :cond_9
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto/16 :goto_1
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 17160
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasComponentName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17127
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 17193
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasDataType()Z
    .locals 2

    .prologue
    .line 17226
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasHdpiCountdownIconUrl()Z
    .locals 2

    .prologue
    .line 17312
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasHdpiListItemIconUrl()Z
    .locals 2

    .prologue
    .line 17378
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasMdpiCountdownIconUrl()Z
    .locals 2

    .prologue
    .line 17345
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public hasMdpiListItemIconUrl()Z
    .locals 2

    .prologue
    .line 17411
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17455
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    .line 17456
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 17469
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 17456
    goto :goto_0

    .line 17458
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasAction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17459
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    move v0, v2

    .line 17460
    goto :goto_0

    :cond_2
    move v0, v2

    .line 17462
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getExtraCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 17463
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17464
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    move v0, v2

    .line 17465
    goto :goto_0

    .line 17462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17468
    :cond_4
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->memoizedIsInitialized:B

    move v0, v3

    .line 17469
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16970
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17631
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16970
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17635
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

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
    .line 17574
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
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 17474
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getSerializedSize()I

    .line 17475
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 17476
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17478
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 17479
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17481
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 17482
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17484
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 17485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDataTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    move v0, v3

    .line 17487
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 17488
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 17490
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 17491
    const/4 v2, 0x6

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->extra_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17490
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v3

    .line 17493
    :goto_2
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 17494
    const/4 v2, 0x7

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->flag_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 17493
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 17496
    :cond_6
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    .line 17497
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17499
    :cond_7
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 17500
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17502
    :cond_8
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9

    .line 17503
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17505
    :cond_9
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 17506
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17508
    :cond_a
    return-void
.end method
