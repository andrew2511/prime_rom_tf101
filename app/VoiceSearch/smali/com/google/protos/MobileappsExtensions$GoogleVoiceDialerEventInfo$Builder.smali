.class public final Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

.field private bitField0_:I

.field private count_:J

.field private duration_:J

.field private label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

.field private position_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9578
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9695
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9761
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9579
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 9580
    return-void
.end method

.method static synthetic access$10100()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9585
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9583
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 2

    .prologue
    .line 9612
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    .line 9613
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9614
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9616
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 5

    .prologue
    .line 9620
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 9621
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9622
    const/4 v2, 0x0

    .line 9623
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9624
    or-int/lit8 v2, v2, 0x1

    .line 9626
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10302(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9627
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9628
    or-int/lit8 v2, v2, 0x2

    .line 9630
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->position_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10402(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J

    .line 9631
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9632
    or-int/lit8 v2, v2, 0x4

    .line 9634
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10502(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J

    .line 9635
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 9636
    or-int/lit8 v2, v2, 0x8

    .line 9638
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10602(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9639
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 9640
    or-int/lit8 v1, v2, 0x10

    .line 9642
    :goto_0
    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->count_:J

    invoke-static {v0, v2, v3}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10702(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;J)J

    .line 9643
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->access$10802(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;I)I

    .line 9644
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 9589
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9590
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9591
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9592
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 9593
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9594
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 9595
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9596
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9597
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9598
    iput-wide v1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 9599
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9600
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9712
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9713
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9715
    return-object p0
.end method

.method public clearCount()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 2

    .prologue
    .line 9799
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9800
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 9802
    return-object p0
.end method

.method public clearDuration()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 2

    .prologue
    .line 9754
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9755
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 9757
    return-object p0
.end method

.method public clearLabel()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1

    .prologue
    .line 9778
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9779
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9781
    return-object p0
.end method

.method public clearPosition()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 2

    .prologue
    .line 9733
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9734
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 9736
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 2

    .prologue
    .line 9604
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

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
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;
    .locals 1

    .prologue
    .line 9700
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 9790
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->count_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9573
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1

    .prologue
    .line 9608
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 9745
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    return-wide v0
.end method

.method public getLabel()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 1

    .prologue
    .line 9766
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 9724
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->position_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9697
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    .line 9787
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 9742
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 9763
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 9721
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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
    .line 9668
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->hasAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9670
    const/4 v0, 0x0

    .line 9672
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
    .line 9573
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9573
    check-cast p1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

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
    .line 9573
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9679
    const/4 v1, 0x0

    .line 9681
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9686
    if-eqz v0, :cond_0

    .line 9687
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 9690
    :cond_0
    return-object p0

    .line 9682
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 9683
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9684
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9686
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 9687
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    :cond_1
    throw v0

    .line 9686
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 9648
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9664
    :goto_0
    return-object v0

    .line 9649
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9650
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 9652
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9653
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->setPosition(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 9655
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9656
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->setDuration(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 9658
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9659
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getLabel()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->setLabel(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 9661
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9662
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->setCount(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    :cond_5
    move-object v0, p0

    .line 9664
    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9703
    if-nez p1, :cond_0

    .line 9704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9706
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9707
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$ActionType;

    .line 9709
    return-object p0
.end method

.method public setCount(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9793
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9794
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 9796
    return-object p0
.end method

.method public setDuration(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9748
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9749
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 9751
    return-object p0
.end method

.method public setLabel(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9769
    if-nez p1, :cond_0

    .line 9770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9772
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9773
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9775
    return-object p0
.end method

.method public setPosition(J)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9727
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 9728
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 9730
    return-object p0
.end method
