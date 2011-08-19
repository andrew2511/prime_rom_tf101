.class public final Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;"
    }
.end annotation


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private start_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1153
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->maybeForceBuilderInitialization()V

    .line 1154
    return-void
.end method

.method static synthetic access$1300()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1159
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlternatesIsMutable()V
    .locals 2

    .prologue
    .line 1323
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1325
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1327
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method


# virtual methods
.method public addAllAlternates(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;)",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;"
        }
    .end annotation

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1391
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1393
    return-object p0
.end method

.method public addAlternates(ILcom/google/protos/speech/common/Alternates$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1384
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1386
    return-object p0
.end method

.method public addAlternates(ILcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1366
    if-nez p2, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1369
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1370
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1372
    return-object p0
.end method

.method public addAlternates(Lcom/google/protos/speech/common/Alternates$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1377
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    return-object p0
.end method

.method public addAlternates(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1356
    if-nez p1, :cond_0

    .line 1357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1359
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1360
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 2

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1186
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1188
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 5

    .prologue
    .line 1192
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 1193
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1194
    const/4 v2, 0x0

    .line 1195
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1196
    or-int/lit8 v2, v2, 0x1

    .line 1198
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1502(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1199
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1200
    or-int/lit8 v2, v2, 0x2

    .line 1202
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1602(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1203
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1204
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1205
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1207
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1702(Lcom/google/protos/speech/common/Alternates$AlternateSpan;Ljava/util/List;)Ljava/util/List;

    .line 1208
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 1209
    or-int/lit8 v1, v2, 0x4

    .line 1211
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1802(Lcom/google/protos/speech/common/Alternates$AlternateSpan;F)F

    .line 1212
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1902(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1213
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clear()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clear()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1163
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1164
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    .line 1165
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1166
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    .line 1167
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1169
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    .line 1171
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1172
    return-object p0
.end method

.method public clearAlternates()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1396
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1397
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1399
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1423
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1424
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    .line 1426
    return-object p0
.end method

.method public clearLength()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1314
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    .line 1316
    return-object p0
.end method

.method public clearStart()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1293
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    .line 1295
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2

    .prologue
    .line 1176
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object p0
.end method

.method public getAlternatesCount()I
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 1180
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1411
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

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

.method public hasLength()Z
    .locals 2

    .prologue
    .line 1301
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1280
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1255
    :goto_0
    return v0

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->hasLength()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 1247
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1249
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternatesCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1250
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 1252
    goto :goto_0

    .line 1249
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1255
    :cond_3
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
    .line 1147
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1147
    check-cast p1, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1147
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v1, 0x0

    .line 1264
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1273
    :cond_0
    return-object p0

    .line 1265
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1266
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1267
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1269
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1270
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    :cond_1
    throw v0

    .line 1269
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1217
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1237
    :goto_0
    return-object v0

    .line 1218
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setStart(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1221
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1222
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setLength(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1224
    :cond_2
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1700(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1225
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1226
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1700(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1227
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1234
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1235
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setConfidence(F)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    :cond_4
    move-object v0, p0

    .line 1237
    goto :goto_0

    .line 1229
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1230
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1700(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeAlternates(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1403
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1405
    return-object p0
.end method

.method public setAlternates(ILcom/google/protos/speech/common/Alternates$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1351
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1353
    return-object p0
.end method

.method public setAlternates(ILcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1340
    if-nez p2, :cond_0

    .line 1341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1343
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1344
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1346
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1417
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1418
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    .line 1420
    return-object p0
.end method

.method public setLength(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1307
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1308
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    .line 1310
    return-object p0
.end method

.method public setStart(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1286
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1287
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    .line 1289
    return-object p0
.end method
