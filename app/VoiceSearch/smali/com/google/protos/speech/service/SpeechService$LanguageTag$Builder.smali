.class public final Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;"
    }
.end annotation


# instance fields
.field private baseLanguage_:Ljava/lang/Object;

.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private script_:Ljava/lang/Object;

.field private variant_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10449
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10108
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->maybeForceBuilderInitialization()V

    .line 10109
    return-void
.end method

.method static synthetic access$11500()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10114
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;-><init>()V

    return-object v0
.end method

.method private ensureVariantIsMutable()V
    .locals 2

    .prologue
    .line 10451
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 10452
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10453
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10455
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10112
    return-void
.end method


# virtual methods
.method public addAllVariant(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;"
        }
    .end annotation

    .prologue
    .line 10491
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10492
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10494
    return-object p0
.end method

.method public addVariant(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10481
    if-nez p1, :cond_0

    .line 10482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10484
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10485
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10487
    return-object p0
.end method

.method public addVariantBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10504
    if-nez p1, :cond_0

    .line 10505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10507
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10508
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 10510
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 2

    .prologue
    .line 10141
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    .line 10142
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10143
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10145
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 5

    .prologue
    .line 10149
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 10150
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10151
    const/4 v2, 0x0

    .line 10152
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10153
    or-int/lit8 v2, v2, 0x1

    .line 10155
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11702(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10156
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10157
    or-int/lit8 v2, v2, 0x2

    .line 10159
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11802(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10160
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10161
    or-int/lit8 v2, v2, 0x4

    .line 10163
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11902(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10164
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 10165
    or-int/lit8 v1, v2, 0x8

    .line 10167
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12002(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10168
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 10169
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10171
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10173
    :cond_3
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12102(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10174
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12202(Lcom/google/protos/speech/service/SpeechService$LanguageTag;I)I

    .line 10175
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10120
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10122
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10124
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10126
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10127
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10128
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10129
    return-object p0
.end method

.method public clearBaseLanguage()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10326
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10327
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10329
    return-object p0
.end method

.method public clearLanguage()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10273
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10274
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10276
    return-object p0
.end method

.method public clearRegion()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10379
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10380
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10382
    return-object p0
.end method

.method public clearScript()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10432
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10433
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10435
    return-object p0
.end method

.method public clearVariant()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1

    .prologue
    .line 10497
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10498
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10500
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 2

    .prologue
    .line 10133
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10295
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10296
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10297
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10298
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10301
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getBaseLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10306
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10308
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10310
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10313
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .locals 1

    .prologue
    .line 10137
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10242
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10243
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10244
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10245
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10248
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10253
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10255
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10257
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10260
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10348
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10349
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10350
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10351
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10354
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10359
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10360
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10361
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10363
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10366
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getScript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10401
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10402
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10403
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10404
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10407
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 10412
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10413
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10414
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10416
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10419
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVariant(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 10464
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVariantBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 10468
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantCount()I
    .locals 1

    .prologue
    .line 10461
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getVariantList()Ljava/util/List;
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
    .line 10458
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseLanguage()Z
    .locals 2

    .prologue
    .line 10292
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

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

    .line 10239
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 2

    .prologue
    .line 10345
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

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

.method public hasScript()Z
    .locals 2

    .prologue
    .line 10398
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 10214
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10102
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10102
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10102
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10221
    const/4 v1, 0x0

    .line 10223
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10228
    if-eqz v0, :cond_0

    .line 10229
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    .line 10232
    :cond_0
    return-object p0

    .line 10224
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 10225
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10226
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10228
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 10229
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    :cond_1
    throw v0

    .line 10228
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10179
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 10210
    :goto_0
    return-object v0

    .line 10180
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10181
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10182
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11700(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10185
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasBaseLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10186
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10187
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11800(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10190
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10191
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10192
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$11900(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10195
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10196
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10197
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12000(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10200
    :cond_4
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10201
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10202
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 10203
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    :cond_5
    :goto_1
    move-object v0, p0

    .line 10210
    goto :goto_0

    .line 10205
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10206
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setBaseLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10317
    if-nez p1, :cond_0

    .line 10318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10320
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10321
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10323
    return-object p0
.end method

.method public setBaseLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10333
    if-nez p1, :cond_0

    .line 10334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10336
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10337
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->baseLanguage_:Ljava/lang/Object;

    .line 10339
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10264
    if-nez p1, :cond_0

    .line 10265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10267
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10268
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10270
    return-object p0
.end method

.method public setLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10280
    if-nez p1, :cond_0

    .line 10281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10283
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10284
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->language_:Ljava/lang/Object;

    .line 10286
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10370
    if-nez p1, :cond_0

    .line 10371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10373
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10374
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10376
    return-object p0
.end method

.method public setRegionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10386
    if-nez p1, :cond_0

    .line 10387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10389
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10390
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->region_:Ljava/lang/Object;

    .line 10392
    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10423
    if-nez p1, :cond_0

    .line 10424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10426
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10427
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10429
    return-object p0
.end method

.method public setScriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10439
    if-nez p1, :cond_0

    .line 10440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10442
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->bitField0_:I

    .line 10443
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->script_:Ljava/lang/Object;

    .line 10445
    return-object p0
.end method

.method public setVariant(ILjava/lang/String;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10472
    if-nez p2, :cond_0

    .line 10473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10475
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->ensureVariantIsMutable()V

    .line 10476
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10478
    return-object p0
.end method
