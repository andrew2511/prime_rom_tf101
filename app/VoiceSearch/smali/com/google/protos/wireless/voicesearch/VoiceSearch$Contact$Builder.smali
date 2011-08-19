.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field private sentence_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5217
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5386
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5410
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5218
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->maybeForceBuilderInitialization()V

    .line 5219
    return-void
.end method

.method static synthetic access$5700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5224
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5222
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 2

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    .line 5250
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5251
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 5

    .prologue
    .line 5257
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 5258
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5259
    const/4 v2, 0x0

    .line 5260
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5261
    or-int/lit8 v2, v2, 0x1

    .line 5263
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$5902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5264
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5265
    or-int/lit8 v2, v2, 0x2

    .line 5267
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5268
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5269
    or-int/lit8 v2, v2, 0x4

    .line 5271
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5272
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 5273
    or-int/lit8 v1, v2, 0x8

    .line 5275
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5276
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;I)I

    .line 5277
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5228
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5230
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5231
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5232
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5233
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5234
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5236
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5237
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5427
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5428
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5430
    return-object p0
.end method

.method public clearName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5369
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5370
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5372
    return-object p0
.end method

.method public clearPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5403
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5404
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5406
    return-object p0
.end method

.method public clearSentence()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1

    .prologue
    .line 5470
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5471
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getSentence()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5473
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 2

    .prologue
    .line 5241
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

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
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .locals 1

    .prologue
    .line 5415
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5212
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .locals 1

    .prologue
    .line 5245
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5338
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5339
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5340
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5341
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5344
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5349
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5350
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5351
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5353
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5356
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 1

    .prologue
    .line 5391
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5439
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5440
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5441
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5442
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5445
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5450
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5451
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5452
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5454
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5457
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 5412
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5335
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumberType()Z
    .locals 2

    .prologue
    .line 5388
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

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

.method public hasSentence()Z
    .locals 2

    .prologue
    .line 5436
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 5310
    :goto_0
    return v0

    .line 5306
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->hasSentence()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5308
    goto :goto_0

    .line 5310
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 5212
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5212
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

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
    .line 5212
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5317
    const/4 v1, 0x0

    .line 5319
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5324
    if-eqz v0, :cond_0

    .line 5325
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5328
    :cond_0
    return-object p0

    .line 5320
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5321
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5322
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5324
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 5325
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    :cond_1
    throw v0

    .line 5324
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5281
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5298
    :goto_0
    return-object v0

    .line 5282
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5283
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5284
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$5900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5287
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5288
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5290
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5291
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    .line 5293
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5294
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5295
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->access$6200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    .line 5298
    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5418
    if-nez p1, :cond_0

    .line 5419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5421
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5422
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5424
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5360
    if-nez p1, :cond_0

    .line 5361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5363
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5364
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5366
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5376
    if-nez p1, :cond_0

    .line 5377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5379
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5380
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->name_:Ljava/lang/Object;

    .line 5382
    return-object p0
.end method

.method public setPhoneNumberType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5394
    if-nez p1, :cond_0

    .line 5395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5397
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5398
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5400
    return-object p0
.end method

.method public setSentence(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5461
    if-nez p1, :cond_0

    .line 5462
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5464
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5465
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5467
    return-object p0
.end method

.method public setSentenceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5477
    if-nez p1, :cond_0

    .line 5478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5480
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->bitField0_:I

    .line 5481
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->sentence_:Ljava/lang/Object;

    .line 5483
    return-object p0
.end method
