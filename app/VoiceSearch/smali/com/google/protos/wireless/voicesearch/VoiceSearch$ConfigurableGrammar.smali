.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurableGrammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    }
.end annotation


# static fields
.field public static final CONFIGURABLE_GRAMMAR_FIELD_NUMBER:I = 0x12

.field public static final GAIA_AUTHENTICATION_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final KANSAS_ID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_SPEECHPERSONALIZATION_GAIA_AUTHENTICATION_TOKENS_FIELD_NUMBER:I = 0x3

.field public static final configurableGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;


# instance fields
.field private bitField0_:I

.field private gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

.field private kansasId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private useSpeechpersonalizationGaiaAuthenticationTokens_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 3287
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 3738
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    .line 3739
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->initFields()V

    .line 3747
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->configurableGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 3237
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3369
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedIsInitialized:B

    .line 3392
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedSerializedSize:I

    .line 3238
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->initFields()V

    move v0, v1

    .line 3242
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3243
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3244
    sparse-switch v2, :sswitch_data_0

    .line 3249
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 3251
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 3247
    goto :goto_0

    .line 3256
    :sswitch_1
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v4, :cond_1

    .line 3257
    new-instance v2, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3258
    or-int/lit8 v1, v1, 0x1

    .line 3260
    :cond_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3275
    :catch_0
    move-exception v0

    .line 3276
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3281
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2

    .line 3282
    new-instance v1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v1, v2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3284
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->makeExtensionsImmutable()V

    throw v0

    .line 3264
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    .line 3265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3277
    :catch_1
    move-exception v0

    .line 3278
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

    .line 3269
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    .line 3270
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3281
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_4

    .line 3282
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3284
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->makeExtensionsImmutable()V

    .line 3286
    return-void

    .line 3244
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 3215
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3220
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3369
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedIsInitialized:B

    .line 3392
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedSerializedSize:I

    .line 3222
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3215
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3369
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedIsInitialized:B

    .line 3392
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedSerializedSize:I

    .line 3223
    return-void
.end method

.method static synthetic access$3900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3215
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3215
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1

    .prologue
    .line 3227
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3365
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    .line 3367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    .line 3368
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1

    .prologue
    .line 3478
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->access$3700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3481
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3458
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3464
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3428
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3434
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3469
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3475
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3448
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3454
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3438
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3444
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3215
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1

    .prologue
    .line 3231
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    return-object v0
.end method

.method public getGaiaAuthenticationToken(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGaiaAuthenticationTokenBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaAuthenticationTokenCount()I
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaAuthenticationTokenList()Ljava/util/List;
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
    .line 3308
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getKansasId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3328
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    .line 3329
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3330
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3338
    :goto_0
    return-object v1

    .line 3332
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3334
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3335
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3336
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3338
    goto :goto_0
.end method

.method public getKansasIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    .line 3344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3345
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3347
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;

    .line 3350
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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3299
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3394
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedSerializedSize:I

    .line 3395
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3416
    :goto_0
    return v0

    :cond_0
    move v0, v3

    move v1, v3

    .line 3400
    :goto_1
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3401
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3404
    :cond_1
    add-int v0, v3, v1

    .line 3405
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getGaiaAuthenticationTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3407
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3408
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3411
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_3

    .line 3412
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3415
    :cond_3
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUseSpeechpersonalizationGaiaAuthenticationTokens()Z
    .locals 1

    .prologue
    .line 3361
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    return v0
.end method

.method public hasKansasId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3325
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUseSpeechpersonalizationGaiaAuthenticationTokens()Z
    .locals 2

    .prologue
    .line 3358
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

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

    .line 3371
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedIsInitialized:B

    .line 3372
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 3375
    :goto_0
    return v0

    .line 3372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3374
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->memoizedIsInitialized:B

    move v0, v2

    .line 3375
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3215
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1

    .prologue
    .line 3479
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3215
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1

    .prologue
    .line 3483
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

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
    .line 3422
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

    .line 3380
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getSerializedSize()I

    .line 3381
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3382
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3384
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 3385
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3387
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2

    .line 3388
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3390
    :cond_2
    return-void
.end method
