.class public final Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;",
        "Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 3

    .prologue
    .line 636
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;-><init>()V

    .line 637
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    .line 638
    return-object v0
.end method


# virtual methods
.method public addAllChannelIds(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1302(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/util/List;)Ljava/util/List;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 875
    return-object p0
.end method

.method public addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1302(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/util/List;)Ljava/util/List;

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
    .locals 3

    .prologue
    .line 682
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 687
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1302(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/util/List;)Ljava/util/List;

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    .line 691
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    .line 692
    return-object v0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2

    .prologue
    .line 655
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

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
    .line 627
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 696
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-object p0

    .line 697
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    .line 700
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    .line 703
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    .line 706
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 707
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    .line 709
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 711
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1302(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/util/List;)Ljava/util/List;

    .line 713
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 724
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 728
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    :sswitch_0
    return-object p0

    .line 734
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    goto :goto_0

    .line 738
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    goto :goto_0

    .line 742
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    goto :goto_0

    .line 746
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    goto :goto_0

    .line 750
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    goto :goto_0

    .line 724
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
    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

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
    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1802(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z

    .line 812
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1902(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1402(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z

    .line 770
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1502(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 829
    if-nez p1, :cond_0

    .line 830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$2002(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z

    .line 833
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$2102(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 834
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1602(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z

    .line 791
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->access$1702(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    return-object p0
.end method
