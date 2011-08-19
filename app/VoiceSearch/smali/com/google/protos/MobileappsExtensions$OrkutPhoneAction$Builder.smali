.class public final Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$OrkutPhoneActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;",
        "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$OrkutPhoneActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isSms_:Z

.field private phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

.field private phoneNumberTypeShown_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10254
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10152
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->maybeForceBuilderInitialization()V

    .line 10153
    return-void
.end method

.method static synthetic access$11000()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->create()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10158
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhoneNumberTypeShownIsMutable()V
    .locals 2

    .prologue
    .line 10302
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 10303
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10304
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10306
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10156
    return-void
.end method


# virtual methods
.method public addAllPhoneNumberTypeShown(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;"
        }
    .end annotation

    .prologue
    .line 10337
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->ensurePhoneNumberTypeShownIsMutable()V

    .line 10338
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10340
    return-object p0
.end method

.method public addPhoneNumberTypeShown(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10327
    if-nez p1, :cond_0

    .line 10328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10330
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->ensurePhoneNumberTypeShownIsMutable()V

    .line 10331
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10333
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->build()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 2

    .prologue
    .line 10181
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    .line 10182
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10183
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10185
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 5

    .prologue
    .line 10189
    new-instance v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 10190
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10191
    const/4 v2, 0x0

    .line 10192
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10193
    or-int/lit8 v2, v2, 0x1

    .line 10195
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11202(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10196
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 10197
    or-int/lit8 v1, v2, 0x2

    .line 10199
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->isSms_:Z

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11302(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Z)Z

    .line 10200
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 10201
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10202
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10204
    :cond_1
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11402(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;Ljava/util/List;)Ljava/util/List;

    .line 10205
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11502(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;I)I

    .line 10206
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clear()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clear()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10163
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10164
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->isSms_:Z

    .line 10166
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10168
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10169
    return-object p0
.end method

.method public clearIsSms()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10292
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->isSms_:Z

    .line 10295
    return-object p0
.end method

.method public clearPhoneNumberTypeActedOn()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10271
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10272
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;->MOBILE:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10274
    return-object p0
.end method

.method public clearPhoneNumberTypeShown()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1

    .prologue
    .line 10343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10344
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10346
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clone()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clone()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clone()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 2

    .prologue
    .line 10173
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->create()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

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
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->clone()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1

    .prologue
    .line 10177
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public getIsSms()Z
    .locals 1

    .prologue
    .line 10283
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->isSms_:Z

    return v0
.end method

.method public getPhoneNumberTypeActedOn()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1

    .prologue
    .line 10259
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object v0
.end method

.method public getPhoneNumberTypeShown(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
    .locals 1
    .parameter

    .prologue
    .line 10314
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    return-object p0
.end method

.method public getPhoneNumberTypeShownCount()I
    .locals 1

    .prologue
    .line 10311
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumberTypeShownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10308
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasIsSms()Z
    .locals 2

    .prologue
    .line 10280
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

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

.method public hasPhoneNumberTypeActedOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10256
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

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
    .locals 1

    .prologue
    .line 10231
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
    .line 10146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10146
    check-cast p1, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

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
    .line 10146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10238
    const/4 v1, 0x0

    .line 10240
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10245
    if-eqz v0, :cond_0

    .line 10246
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    .line 10249
    :cond_0
    return-object p0

    .line 10241
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 10242
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10243
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10245
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 10246
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    :cond_1
    throw v0

    .line 10245
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10210
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 10227
    :goto_0
    return-object v0

    .line 10211
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->hasPhoneNumberTypeActedOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10212
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getPhoneNumberTypeActedOn()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->setPhoneNumberTypeActedOn(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    .line 10214
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->hasIsSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10215
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getIsSms()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->setIsSms(Z)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    .line 10217
    :cond_2
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11400(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10218
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10219
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11400(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    .line 10220
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    :cond_3
    :goto_1
    move-object v0, p0

    .line 10227
    goto :goto_0

    .line 10222
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->ensurePhoneNumberTypeShownIsMutable()V

    .line 10223
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->access$11400(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setIsSms(Z)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10286
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10287
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->isSms_:Z

    .line 10289
    return-object p0
.end method

.method public setPhoneNumberTypeActedOn(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10262
    if-nez p1, :cond_0

    .line 10263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10265
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->bitField0_:I

    .line 10266
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeActedOn_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;

    .line 10268
    return-object p0
.end method

.method public setPhoneNumberTypeShown(ILcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10318
    if-nez p2, :cond_0

    .line 10319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10321
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->ensurePhoneNumberTypeShownIsMutable()V

    .line 10322
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->phoneNumberTypeShown_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10324
    return-object p0
.end method
