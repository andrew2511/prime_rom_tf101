.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 1

    .prologue
    .line 1445
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1496
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 3

    .prologue
    .line 1454
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;-><init>()V

    .line 1455
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    .line 1456
    return-object v0
.end method


# virtual methods
.method public addArtistTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    return-object p0
.end method

.method public addMixTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1783
    if-nez p1, :cond_0

    .line 1784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    return-object p0
.end method

.method public addRelatedArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    return-object p0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    .locals 3

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    if-nez v1, :cond_0

    .line 1501
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1504
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1508
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1509
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1513
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1516
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    .line 1517
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    .line 1518
    return-object v0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2

    .prologue
    .line 1473
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

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
    .line 1445
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    return-object v0
.end method

.method public hasMainArtist()Z
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1522
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-object p0

    .line 1523
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1524
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeMainArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    .line 1526
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasBundleForCountry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1527
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getBundleForCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->setBundleForCountry(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    .line 1529
    :cond_3
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1530
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1531
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1533
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1535
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1536
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1537
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1539
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4100(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1541
    :cond_7
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1543
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/util/List;)Ljava/util/List;

    .line 1545
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4200(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1556
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1560
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1561
    :sswitch_0
    return-object p0

    .line 1566
    :sswitch_1
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v0

    .line 1567
    .local v0, subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->hasMainArtist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    .line 1570
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1571
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->setMainArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    goto :goto_0

    .line 1575
    .end local v0           #subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->setBundleForCountry(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    goto :goto_0

    .line 1579
    :sswitch_3
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    .line 1580
    .local v0, subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1581
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->addRelatedArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    goto :goto_0

    .line 1585
    .end local v0           #subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    :sswitch_4
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    .line 1586
    .local v0, subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1587
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->addArtistTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    goto :goto_0

    .line 1591
    .end local v0           #subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    :sswitch_5
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    .line 1592
    .restart local v0       #subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1593
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->addMixTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    goto :goto_0

    .line 1556
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMainArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->hasMainArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v0

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 1629
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Z)Z

    .line 1630
    return-object p0

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    goto :goto_0
.end method

.method public setBundleForCountry(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1646
    if-nez p1, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Z)Z

    .line 1650
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    return-object p0
.end method

.method public setMainArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1609
    if-nez p1, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Z)Z

    .line 1613
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->access$4402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    .line 1614
    return-object p0
.end method
