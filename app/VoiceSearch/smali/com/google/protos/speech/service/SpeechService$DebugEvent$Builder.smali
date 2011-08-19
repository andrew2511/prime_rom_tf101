.class public final Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
        "Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private startTimeMs_:J

.field private subevent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6900
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->maybeForceBuilderInitialization()V

    .line 6901
    return-void
.end method

.method static synthetic access$7600()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6906
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubeventIsMutable()V
    .locals 2

    .prologue
    .line 7111
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 7112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 7113
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7115
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6904
    return-void
.end method


# virtual methods
.method public addAllSubevent(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 7178
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7179
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7181
    return-object p0
.end method

.method public addSubevent(ILcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7171
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7172
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7174
    return-object p0
.end method

.method public addSubevent(ILcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7154
    if-nez p2, :cond_0

    .line 7155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7157
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7158
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7160
    return-object p0
.end method

.method public addSubevent(Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7164
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7165
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7167
    return-object p0
.end method

.method public addSubevent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7144
    if-nez p1, :cond_0

    .line 7145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7147
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7148
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7150
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 2

    .prologue
    .line 6931
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    .line 6932
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6933
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6935
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 5

    .prologue
    .line 6939
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 6940
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6941
    const/4 v2, 0x0

    .line 6942
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6943
    or-int/lit8 v2, v2, 0x1

    .line 6945
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$7802(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J

    .line 6946
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6947
    or-int/lit8 v2, v2, 0x2

    .line 6949
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$7902(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J

    .line 6950
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 6951
    or-int/lit8 v1, v2, 0x4

    .line 6953
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8002(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6954
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 6955
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6956
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6958
    :cond_2
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8102(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/util/List;)Ljava/util/List;

    .line 6959
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8202(Lcom/google/protos/speech/service/SpeechService$DebugEvent;I)I

    .line 6960
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 6910
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6911
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    .line 6912
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6913
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    .line 6914
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 6916
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6917
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6918
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6919
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2

    .prologue
    .line 7048
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7049
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    .line 7051
    return-object p0
.end method

.method public clearStartTimeMs()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2

    .prologue
    .line 7027
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    .line 7030
    return-object p0
.end method

.method public clearSubevent()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 7184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 7185
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7187
    return-object p0
.end method

.method public clearText()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 7091
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7092
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7094
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2

    .prologue
    .line 6923
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6927
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 7039
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 7018
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    return-wide v0
.end method

.method public getSubevent(I)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1
    .parameter

    .prologue
    .line 7124
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object p0
.end method

.method public getSubeventCount()I
    .locals 1

    .prologue
    .line 7121
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubeventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7118
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7060
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7061
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7062
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7063
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7066
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7071
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7073
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7075
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7078
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 7036
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

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

.method public hasStartTimeMs()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7015
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 7057
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6990
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
    .line 6894
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6894
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6894
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6997
    const/4 v1, 0x0

    .line 6999
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7004
    if-eqz v0, :cond_0

    .line 7005
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 7008
    :cond_0
    return-object p0

    .line 7000
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7001
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7002
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7004
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7005
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    :cond_1
    throw v0

    .line 7004
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6964
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6986
    :goto_0
    return-object v0

    .line 6965
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasStartTimeMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6966
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getStartTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->setStartTimeMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 6968
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6969
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDurationMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->setDurationMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 6971
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6972
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6973
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8000(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 6976
    :cond_3
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6977
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6978
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6979
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    :cond_4
    :goto_1
    move-object v0, p0

    .line 6986
    goto :goto_0

    .line 6981
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 6982
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSubevent(I)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7190
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7191
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7193
    return-object p0
.end method

.method public setDurationMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7042
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7043
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    .line 7045
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7021
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7022
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    .line 7024
    return-object p0
.end method

.method public setSubevent(ILcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7138
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7139
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7141
    return-object p0
.end method

.method public setSubevent(ILcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7128
    if-nez p2, :cond_0

    .line 7129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7131
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 7132
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7134
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7082
    if-nez p1, :cond_0

    .line 7083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7085
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7086
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7088
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7098
    if-nez p1, :cond_0

    .line 7099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7101
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7102
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7104
    return-object p0
.end method
