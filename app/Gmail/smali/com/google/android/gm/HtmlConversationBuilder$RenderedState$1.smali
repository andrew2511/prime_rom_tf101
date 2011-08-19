.class final Lcom/google/android/gm/HtmlConversationBuilder$RenderedState$1;
.super Ljava/lang/Object;
.source "HtmlConversationBuilder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 440
    const-class v0, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/ConversationInfo;

    .line 442
    new-instance v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-direct {v0, p0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;-><init>(Lcom/google/android/gm/ConversationInfo;)V

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mHtml:Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    .line 447
    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object p0, v1, v3

    .line 448
    iget-object v4, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    check-cast p0, Ljava/lang/Long;

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    const-class v2, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 452
    iget-object v2, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    .line 455
    array-length v2, v1

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object p0, v1, v3

    .line 456
    iget-object v4, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    .line 459
    array-length v2, v1

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object p0, v1, v3

    .line 460
    iget-object v4, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 462
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {p1, v1, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 465
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 466
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 467
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setExpandedMessageId(JZ)V

    goto :goto_3

    .line 469
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 470
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setExpandedMessageId(JZ)V

    goto :goto_4

    .line 472
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-virtual {p1, v1, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 474
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 475
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->showImagesForMessage(J)V

    goto :goto_5

    .line 477
    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [Z

    .line 478
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 479
    aget-boolean v2, v1, v6

    iput-boolean v2, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDirty:Z

    .line 480
    aget-boolean v2, v1, v7

    invoke-static {v0, v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->access$002(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Z

    .line 481
    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->access$102(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Z

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->access$202(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;F)F

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 485
    iget-object v3, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 487
    :cond_6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 492
    new-array v0, p1, [Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState$1;->newArray(I)[Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v0

    return-object v0
.end method
