.class public final Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$AlternateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$AlternateParams;",
        "Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 233
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maybeForceBuilderInitialization()V

    .line 234
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 264
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 5

    .prologue
    .line 268
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 269
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 270
    const/4 v2, 0x0

    .line 271
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 272
    or-int/lit8 v2, v2, 0x1

    .line 274
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$302(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 275
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 276
    or-int/lit8 v1, v2, 0x2

    .line 278
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$402(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 279
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$502(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 280
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clear()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clear()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 244
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    .line 245
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 246
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    .line 247
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 248
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    .line 335
    return-object p0
.end method

.method public clearMaxTotalSpanLength()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    .line 356
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

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
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 320
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxTotalSpanLength()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 295
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
    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 227
    check-cast p1, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

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
    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 304
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 313
    :cond_0
    return-object p0

    .line 305
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 306
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    :cond_1
    throw v0

    .line 309
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 291
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getMaxSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getMaxTotalSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxTotalSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    :cond_2
    move-object v0, p0

    .line 291
    goto :goto_0
.end method

.method public setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 326
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 327
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    .line 329
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter

    .prologue
    .line 347
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 348
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    .line 350
    return-object p0
.end method
