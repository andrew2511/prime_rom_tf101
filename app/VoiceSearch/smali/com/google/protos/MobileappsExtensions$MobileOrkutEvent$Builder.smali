.class public final Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileOrkutEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;",
        "Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileOrkutEventOrBuilder;"
    }
.end annotation


# instance fields
.field private actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

.field private action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

.field private bitField0_:I

.field private durationMs_:I

.field private phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

.field private refreshUrl_:Ljava/lang/Object;

.field private timeMs_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11014
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11142
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->API_GET_ACTIVITIES:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 11166
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 11232
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11015
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->maybeForceBuilderInitialization()V

    .line 11016
    return-void
.end method

.method static synthetic access$11700()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11021
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11019
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 2

    .prologue
    .line 11050
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    .line 11051
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11052
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11054
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 5

    .prologue
    .line 11058
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 11059
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11060
    const/4 v2, 0x0

    .line 11061
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11062
    or-int/lit8 v2, v2, 0x1

    .line 11064
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$11902(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 11065
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11066
    or-int/lit8 v2, v2, 0x2

    .line 11068
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12002(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 11069
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11070
    or-int/lit8 v2, v2, 0x4

    .line 11072
    :cond_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->durationMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12102(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;I)I

    .line 11073
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11074
    or-int/lit8 v2, v2, 0x8

    .line 11076
    :cond_3
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->timeMs_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12202(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;J)J

    .line 11077
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11078
    or-int/lit8 v2, v2, 0x10

    .line 11080
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12302(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11081
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    .line 11082
    or-int/lit8 v1, v2, 0x20

    .line 11084
    :goto_0
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12402(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11085
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12502(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;I)I

    .line 11086
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 2

    .prologue
    .line 11025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11026
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->API_GET_ACTIVITIES:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 11027
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11028
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 11029
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11030
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->durationMs_:I

    .line 11031
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11032
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->timeMs_:J

    .line 11033
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11034
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11035
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11036
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11037
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11038
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11159
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11160
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;->API_GET_ACTIVITIES:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 11162
    return-object p0
.end method

.method public clearActionTargetType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11183
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11184
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;->SELF:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 11186
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11204
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->durationMs_:I

    .line 11207
    return-object p0
.end method

.method public clearPhoneAction()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11268
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11270
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11271
    return-object p0
.end method

.method public clearRefreshUrl()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1

    .prologue
    .line 11311
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11312
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getRefreshUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11314
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 2

    .prologue
    .line 11225
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->timeMs_:J

    .line 11228
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 2

    .prologue
    .line 11042
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

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
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;
    .locals 1

    .prologue
    .line 11147
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    return-object v0
.end method

.method public getActionTargetType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;
    .locals 1

    .prologue
    .line 11171
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11009
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1

    .prologue
    .line 11046
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 11195
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->durationMs_:I

    return v0
.end method

.method public getPhoneAction()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;
    .locals 1

    .prologue
    .line 11237
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11280
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11281
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11282
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11283
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11286
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRefreshUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 11291
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11293
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11295
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11298
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 11216
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->timeMs_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11144
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionTargetType()Z
    .locals 2

    .prologue
    .line 11168
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

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

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 11192
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

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

.method public hasPhoneAction()Z
    .locals 2

    .prologue
    .line 11234
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

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

.method public hasRefreshUrl()Z
    .locals 2

    .prologue
    .line 11277
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

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

.method public hasTimeMs()Z
    .locals 2

    .prologue
    .line 11213
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

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
    .line 11115
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->hasAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11117
    const/4 v0, 0x0

    .line 11119
    :goto_0
    return v0

    :cond_0
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
    .line 11009
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11009
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

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
    .line 11009
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11126
    const/4 v1, 0x0

    .line 11128
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11133
    if-eqz v0, :cond_0

    .line 11134
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11137
    :cond_0
    return-object p0

    .line 11129
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 11130
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11131
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11133
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 11134
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    :cond_1
    throw v0

    .line 11133
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 11090
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 11111
    :goto_0
    return-object v0

    .line 11091
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11092
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getAction()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11094
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasActionTargetType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11095
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getActionTargetType()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->setActionTargetType(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11097
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11098
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11100
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11101
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->setTimeMs(J)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11103
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasPhoneAction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11104
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getPhoneAction()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergePhoneAction(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 11106
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->hasRefreshUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11107
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11108
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->access$12400(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    :cond_6
    move-object v0, p0

    .line 11111
    goto :goto_0
.end method

.method public mergePhoneAction(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 11256
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11258
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;->newBuilder(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11264
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11265
    return-object p0

    .line 11261
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11150
    if-nez p1, :cond_0

    .line 11151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11153
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11154
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionType;

    .line 11156
    return-object p0
.end method

.method public setActionTargetType(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11174
    if-nez p1, :cond_0

    .line 11175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11177
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11178
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->actionTargetType_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$ActionTargetType;

    .line 11180
    return-object p0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11198
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11199
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->durationMs_:I

    .line 11201
    return-object p0
.end method

.method public setPhoneAction(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11250
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$Builder;->build()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11252
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11253
    return-object p0
.end method

.method public setPhoneAction(Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11240
    if-nez p1, :cond_0

    .line 11241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11243
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->phoneAction_:Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction;

    .line 11245
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11246
    return-object p0
.end method

.method public setRefreshUrl(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11302
    if-nez p1, :cond_0

    .line 11303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11305
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11306
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11308
    return-object p0
.end method

.method public setRefreshUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11318
    if-nez p1, :cond_0

    .line 11319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11321
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11322
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->refreshUrl_:Ljava/lang/Object;

    .line 11324
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 11219
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->bitField0_:I

    .line 11220
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->timeMs_:J

    .line 11222
    return-object p0
.end method
