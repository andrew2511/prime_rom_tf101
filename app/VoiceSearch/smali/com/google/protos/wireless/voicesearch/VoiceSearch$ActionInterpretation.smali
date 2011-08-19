.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionInterpretation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final ACTION_LITERAL_FIELD_NUMBER:I = 0x4

.field public static final BUSINESS_INFO_FIELD_NUMBER:I = 0x69

.field public static final CONTACTS_INFO_FIELD_NUMBER:I = 0x65

.field public static final GO_TO_INFO_FIELD_NUMBER:I = 0x6b

.field public static final INTENT_FIELD_NUMBER:I = 0x67

.field public static final MAPS_INFO_FIELD_NUMBER:I = 0x64

.field public static final MULTISLOT_ACTION_INFO_FIELD_NUMBER:I = 0x6a

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x66

.field public static final QUERY_FIELD_NUMBER:I = 0x3

.field public static final SENTENCE_FIELD_NUMBER:I = 0x5

.field public static final WEBSEARCH_INFO_FIELD_NUMBER:I = 0x68

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;


# instance fields
.field private actionLiteral_:Ljava/lang/Object;

.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private bitField0_:I

.field private businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

.field private contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

.field private goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

.field private intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

.field private mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

.field private phoneNumber_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private sentence_:Ljava/lang/Object;

.field private websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    .line 1625
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    .line 1626
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->initFields()V

    .line 1627
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
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 650
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 171
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->initFields()V

    .line 174
    const/4 v0, 0x0

    move v1, v0

    .line 175
    :goto_0
    if-nez v1, :cond_7

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 177
    sparse-switch v0, :sswitch_data_0

    .line 182
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v4

    :goto_1
    move v1, v0

    .line 309
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 180
    goto :goto_1

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 190
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_f

    .line 192
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 193
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move v0, v1

    goto :goto_1

    .line 198
    :sswitch_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    move v0, v1

    .line 200
    goto :goto_1

    .line 203
    :sswitch_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    move v0, v1

    .line 205
    goto :goto_1

    .line 208
    :sswitch_4
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    move v0, v1

    .line 210
    goto :goto_1

    .line 214
    :sswitch_5
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_e

    .line 215
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 217
    :goto_2
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 218
    if-eqz v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    .line 220
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 222
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 223
    goto :goto_1

    .line 227
    :sswitch_6
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_d

    .line 228
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 230
    :goto_3
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 231
    if-eqz v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 233
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 235
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 236
    goto/16 :goto_1

    .line 239
    :sswitch_7
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    .line 240
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    move v0, v1

    .line 241
    goto/16 :goto_1

    .line 245
    :sswitch_8
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_c

    .line 246
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    move-object v2, v0

    .line 248
    :goto_4
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 249
    if-eqz v2, :cond_2

    .line 250
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    .line 251
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 253
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 254
    goto/16 :goto_1

    .line 258
    :sswitch_9
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_b

    .line 259
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 261
    :goto_5
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 262
    if-eqz v2, :cond_3

    .line 263
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    .line 264
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 266
    :cond_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 267
    goto/16 :goto_1

    .line 271
    :sswitch_a
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v2, 0x200

    if-ne v0, v2, :cond_a

    .line 272
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 274
    :goto_6
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 275
    if-eqz v2, :cond_4

    .line 276
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    .line 277
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 279
    :cond_4
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 280
    goto/16 :goto_1

    .line 284
    :sswitch_b
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v2, 0x400

    if-ne v0, v2, :cond_9

    .line 285
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 287
    :goto_7
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 288
    if-eqz v2, :cond_5

    .line 289
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 290
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 292
    :cond_5
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    move v0, v1

    .line 293
    goto/16 :goto_1

    .line 297
    :sswitch_c
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v2, 0x800

    if-ne v0, v2, :cond_8

    .line 298
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    move-object v2, v0

    .line 300
    :goto_8
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 301
    if-eqz v2, :cond_6

    .line 302
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 303
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 305
    :cond_6
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 306
    goto/16 :goto_1

    .line 316
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->makeExtensionsImmutable()V

    .line 318
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->makeExtensionsImmutable()V

    throw v0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    move-object v2, v3

    goto :goto_8

    :cond_9
    move-object v2, v3

    goto :goto_7

    :cond_a
    move-object v2, v3

    goto/16 :goto_6

    :cond_b
    move-object v2, v3

    goto/16 :goto_5

    :cond_c
    move-object v2, v3

    goto/16 :goto_4

    :cond_d
    move-object v2, v3

    goto/16 :goto_3

    :cond_e
    move-object v2, v3

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x322 -> :sswitch_5
        0x32a -> :sswitch_6
        0x332 -> :sswitch_7
        0x33a -> :sswitch_8
        0x342 -> :sswitch_9
        0x34a -> :sswitch_a
        0x352 -> :sswitch_b
        0x35a -> :sswitch_c
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
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 650
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 156
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 650
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 736
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 156
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 641
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 642
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 644
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 645
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 646
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 647
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 648
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 649
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1

    .prologue
    .line 853
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->access$100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter

    .prologue
    .line 856
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 803
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 809
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 813
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 819
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object v0
.end method

.method public getActionLiteral()Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 442
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 443
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 451
    :goto_0
    return-object v1

    .line 445
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 447
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 451
    goto :goto_0
.end method

.method public getActionLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 457
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 458
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 460
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object v0
.end method

.method public getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getGoToInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    return-object v0
.end method

.method public getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object v0
.end method

.method public getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object v0
.end method

.method public getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 561
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 562
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 570
    :goto_0
    return-object v1

    .line 564
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 566
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 570
    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 576
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 577
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 579
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;

    .line 582
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 475
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 476
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 484
    :goto_0
    return-object v1

    .line 478
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 480
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 484
    goto :goto_0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 490
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 491
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 493
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;

    .line 496
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 508
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 509
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 517
    :goto_0
    return-object v1

    .line 511
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 513
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 517
    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 523
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 524
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 526
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;

    .line 529
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

    .line 738
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    .line 739
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 791
    :goto_0
    return v0

    .line 741
    :cond_0
    const/4 v0, 0x0

    .line 742
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 743
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 747
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3

    .line 751
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getActionLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_3
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 755
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_4
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 759
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_5
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 763
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_6
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 767
    const/16 v1, 0x66

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_7
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 771
    const/16 v1, 0x67

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_8
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 775
    const/16 v1, 0x68

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 778
    :cond_9
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 779
    const/16 v1, 0x69

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_a
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 783
    const/16 v1, 0x6a

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    :cond_b
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 787
    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_c
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 428
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionLiteral()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasBusinessInfo()Z
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContactsInfo()Z
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasGoToInfo()Z
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntent()Z
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasMapsInfo()Z
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasMultislotActionInfo()Z
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 471
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasSentence()Z
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

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

.method public hasWebsearchInfo()Z
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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

    .line 652
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    .line 653
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 692
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 653
    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMapsInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 658
    goto :goto_0

    .line 661
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasContactsInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 664
    goto :goto_0

    .line 667
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 669
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 670
    goto :goto_0

    .line 673
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasWebsearchInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 675
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 676
    goto :goto_0

    .line 679
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasBusinessInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 681
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 682
    goto :goto_0

    .line 685
    :cond_6
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 686
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 687
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v2

    .line 688
    goto :goto_0

    .line 691
    :cond_7
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->memoizedIsInitialized:B

    move v0, v3

    .line 692
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1

    .prologue
    .line 858
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

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
    .line 797
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

    .line 697
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSerializedSize()I

    .line 698
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 701
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_1

    .line 702
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 704
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getActionLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 707
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 708
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 710
    :cond_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 711
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 713
    :cond_4
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 714
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 716
    :cond_5
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 717
    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 719
    :cond_6
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 720
    const/16 v0, 0x67

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 722
    :cond_7
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 723
    const/16 v0, 0x68

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 725
    :cond_8
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 726
    const/16 v0, 0x69

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 728
    :cond_9
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 729
    const/16 v0, 0x6a

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 731
    :cond_a
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 732
    const/16 v0, 0x6b

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 734
    :cond_b
    return-void
.end method
