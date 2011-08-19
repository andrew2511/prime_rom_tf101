.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_FIELD_NUMBER:I = 0x18

.field public static final MAPS_REQUEST_DATA_FIELD_NUMBER:I = 0x64

.field public static final MULTISLOT_ACTION_CONTEXT_FIELD_NUMBER:I = 0x66

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ACTION_FIELD_NUMBER:I = 0x1

.field public static final WEBSEARCH_REQUEST_DATA_FIELD_NUMBER:I = 0x65

.field public static final actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;


# instance fields
.field private bitField0_:I

.field private mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

.field private supportedAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 9664
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10188
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    .line 10189
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->initFields()V

    .line 10197
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x18

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
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

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 9564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9729
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9565
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->initFields()V

    move v2, v1

    .line 9569
    :goto_0
    if-nez v1, :cond_8

    .line 9570
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 9571
    sparse-switch v0, :sswitch_data_0

    .line 9576
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v5

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 9651
    goto :goto_0

    :sswitch_0
    move v0, v5

    move v1, v2

    .line 9574
    goto :goto_1

    .line 9583
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 9584
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    .line 9585
    if-eqz v0, :cond_d

    .line 9586
    and-int/lit8 v3, v2, 0x1

    if-eq v3, v5, :cond_0

    .line 9587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9588
    or-int/lit8 v2, v2, 0x1

    .line 9590
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 9595
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9596
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 9597
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4

    .line 9598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 9599
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v3

    .line 9600
    if-eqz v3, :cond_1

    .line 9601
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v5, :cond_2

    .line 9602
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9603
    or-int/lit8 v2, v2, 0x1

    .line 9605
    :cond_2
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 9652
    :catch_0
    move-exception v0

    move v1, v2

    .line 9653
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9658
    :catchall_0
    move-exception v0

    :goto_3
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_3

    .line 9659
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9661
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->makeExtensionsImmutable()V

    throw v0

    .line 9608
    :cond_4
    :try_start_2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    move v0, v1

    move v1, v2

    .line 9609
    goto :goto_1

    .line 9613
    :sswitch_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_c

    .line 9614
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    move-object v3, v0

    .line 9616
    :goto_4
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9617
    if-eqz v3, :cond_5

    .line 9618
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {v3, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    .line 9619
    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9621
    :cond_5
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 9622
    goto/16 :goto_1

    .line 9626
    :sswitch_4
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 9627
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    move-object v3, v0

    .line 9629
    :goto_5
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9630
    if-eqz v3, :cond_6

    .line 9631
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {v3, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 9632
    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9634
    :cond_6
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 9635
    goto/16 :goto_1

    .line 9639
    :sswitch_5
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_a

    .line 9640
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    move-object v3, v0

    .line 9642
    :goto_6
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9643
    if-eqz v3, :cond_7

    .line 9644
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {v3, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 9645
    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9647
    :cond_7
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    move v1, v2

    .line 9648
    goto/16 :goto_1

    .line 9658
    :cond_8
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v5, :cond_9

    .line 9659
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9661
    :cond_9
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->makeExtensionsImmutable()V

    .line 9663
    return-void

    .line 9654
    :catch_1
    move-exception v0

    move v1, v2

    .line 9655
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

    .line 9658
    :catchall_1
    move-exception v0

    move v1, v2

    goto/16 :goto_3

    :cond_a
    move-object v3, v6

    goto :goto_6

    :cond_b
    move-object v3, v6

    goto :goto_5

    :cond_c
    move-object v3, v6

    goto/16 :goto_4

    :cond_d
    move v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 9571
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x322 -> :sswitch_3
        0x32a -> :sswitch_4
        0x332 -> :sswitch_5
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
    .line 9542
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9547
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9729
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9549
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9550
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9729
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9550
    return-void
.end method

.method static synthetic access$11600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 9542
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9542
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1

    .prologue
    .line 9554
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9725
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9726
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9727
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9728
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9863
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->access$11400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9866
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9843
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9849
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9813
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9819
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9854
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9860
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9833
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9839
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9823
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9829
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1

    .prologue
    .line 9558
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object v0
.end method

.method public getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 9700
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 1

    .prologue
    .line 9720
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9676
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9775
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9776
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9801
    :goto_0
    return v0

    :cond_0
    move v1, v3

    move v2, v3

    .line 9781
    :goto_1
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 9782
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 9781
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 9785
    :cond_1
    add-int v0, v3, v2

    .line 9786
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9788
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 9789
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9792
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 9793
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9796
    :cond_3
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 9797
    const/16 v1, 0x66

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9800
    :cond_4
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSupportedAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter

    .prologue
    .line 9690
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p0
.end method

.method public getSupportedActionCount()I
    .locals 1

    .prologue
    .line 9687
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9684
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    return-object v0
.end method

.method public getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1

    .prologue
    .line 9710
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method public hasMapsRequestData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9697
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultislotActionContext()Z
    .locals 2

    .prologue
    .line 9717
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

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

.method public hasWebsearchRequestData()Z
    .locals 2

    .prologue
    .line 9707
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

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

    .line 9731
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9732
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9753
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9732
    goto :goto_0

    .line 9734
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMapsRequestData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9735
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9736
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 9737
    goto :goto_0

    .line 9740
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasWebsearchRequestData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9742
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 9743
    goto :goto_0

    .line 9746
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMultislotActionContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9747
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9748
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    move v0, v2

    .line 9749
    goto :goto_0

    .line 9752
    :cond_4
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    move v0, v3

    .line 9753
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9864
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9868
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

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
    .line 9807
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
    const/4 v2, 0x1

    .line 9758
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getSerializedSize()I

    .line 9759
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 9760
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9759
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9762
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 9763
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9765
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9766
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9768
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 9769
    const/16 v0, 0x66

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9771
    :cond_3
    return-void
.end method
