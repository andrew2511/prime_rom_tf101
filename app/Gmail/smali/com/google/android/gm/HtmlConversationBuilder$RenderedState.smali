.class public Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
.super Ljava/lang/Object;
.source "HtmlConversationBuilder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderedState"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blockImages:Z

.field private mCacheable:Z

.field final mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field mDirty:Z

.field final mDraftMessageIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedHeaders:Z

.field final mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mHtml:Ljava/lang/String;

.field final mInitialUnreadMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMessageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mMessageIdsToShowImagesFor:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mSendersToShowImagesFor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mSendingMessageIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState$1;

    invoke-direct {v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/ConversationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    .line 198
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    .line 204
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    .line 209
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    .line 214
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIdsToShowImagesFor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    .line 147
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 148
    iput-boolean v1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    .line 149
    iput-boolean v1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->blockImages:Z

    .line 150
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedHeaders:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mZoomValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setHtml(Ljava/lang/String;)V

    return-void
.end method

.method private setHtml(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mHtml:Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDirty:Z

    .line 236
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mZoomValue:F

    return v0
.end method

.method public hasRenderedMessage(J)Z
    .locals 2
    .parameter "messageId"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDirty:Z

    return v0
.end method

.method public isDirty(F)Z
    .locals 1
    .parameter "currentZoom"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mZoomValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isExpandedHeaders()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedHeaders:Z

    return v0
.end method

.method isManuallyCollapsedMessageId(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isManuallyExpandedMessageId(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 319
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markDirtyAndUncacheable()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDirty:Z

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->setCacheable(Z)V

    .line 280
    return-void
.end method

.method markHeadersExpanded()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedHeaders:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedHeaders:Z

    .line 310
    :cond_0
    return-void
.end method

.method public setCacheable(Z)V
    .locals 2
    .parameter "cacheable"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mCacheable can\'t be turned from false -> true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    .line 269
    return-void
.end method

.method setExpandedMessageId(JZ)V
    .locals 3
    .parameter "id"
    .parameter "isExpanded"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz p3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void

    .line 339
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method setZoomValue(F)V
    .locals 0
    .parameter "zoom"

    .prologue
    .line 296
    iput p1, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mZoomValue:F

    .line 297
    return-void
.end method

.method showImagesForMessage(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIdsToShowImagesFor:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method public validForSenderWhitelist(Ljava/util/Set;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 368
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, sender:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 370
    .local v3, val:Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 379
    .end local v2           #sender:Ljava/lang/String;
    .end local v3           #val:Ljava/lang/Boolean;
    .end local p0
    :goto_0
    return v4

    .line 374
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 375
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 376
    goto :goto_0

    .line 379
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 396
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1, v8, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 397
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    iget-object v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Long;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 399
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 400
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 401
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v4, manuallyCollapsed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v5, manuallyExpanded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedMessageIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 406
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 407
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 413
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 415
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v6, safeForImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIdsToShowImagesFor:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 418
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 419
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 423
    const/4 v8, 0x3

    new-array v0, v8, [Z

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDirty:Z

    aput-boolean v9, v0, v8

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mCacheable:Z

    aput-boolean v9, v0, v8

    const/4 v8, 0x2

    iget-boolean v9, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mExpandedHeaders:Z

    aput-boolean v9, v0, v8

    .line 424
    .local v0, booleans:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 426
    iget v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mZoomValue:F

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 428
    new-instance v7, Landroid/os/Bundle;

    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 429
    .local v7, sendersBundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 430
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, p0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 432
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 433
    return-void
.end method
