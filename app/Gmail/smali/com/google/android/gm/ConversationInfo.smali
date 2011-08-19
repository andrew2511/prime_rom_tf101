.class public Lcom/google/android/gm/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mConversationId:J

.field private mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMessageId:J

.field private mMaxMessageId:J

.field private mServerMessageId:J

.field private mView:Lcom/google/android/gm/CanvasConversationHeaderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 42
    sget-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/conversationId/*/maxServerMessageId/*/labels/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    new-instance v0, Lcom/google/android/gm/ConversationInfo$1;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJLjava/util/Map;)V
    .locals 11
    .parameter "conversationId"
    .parameter "localMessageId"
    .parameter "serverMessageId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p9, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    .line 49
    return-void
.end method

.method public constructor <init>(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V
    .locals 0
    .parameter "conversationId"
    .parameter "localMessageId"
    .parameter "serverMessageId"
    .parameter "maxMessageId"
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CanvasConversationHeaderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p9, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gm/ConversationInfo;->init(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    .line 54
    return-void
.end method

.method public constructor <init>(JJLjava/util/Map;)V
    .locals 11
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    .line 58
    return-void
.end method

.method public constructor <init>(JJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V
    .locals 11
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CanvasConversationHeaderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gm/ConversationInfo;->init(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    .line 63
    return-void
.end method

.method public static forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;
    .locals 7
    .parameter "cursor"

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V

    return-object v0
.end method

.method public static forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gm/ConversationInfo;
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 97
    .local v7, data:Landroid/net/Uri;
    if-eqz v7, :cond_0

    sget-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 105
    .end local v7           #data:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 101
    .restart local v7       #data:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    goto :goto_0

    .end local v7           #data:Landroid/net/Uri;
    .end local v8           #parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v0, v2

    .line 105
    goto :goto_0
.end method

.method private init(JJJJLjava/util/Map;Lcom/google/android/gm/CanvasConversationHeaderView;)V
    .locals 0
    .parameter "conversationId"
    .parameter "localMessageId"
    .parameter "serverMessageId"
    .parameter "maxMessageId"
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CanvasConversationHeaderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p9, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    .line 68
    iput-wide p3, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    .line 69
    iput-wide p5, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    .line 70
    iput-object p9, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    .line 71
    iput-wide p7, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    .line 72
    iput-object p10, p0, Lcom/google/android/gm/ConversationInfo;->mView:Lcom/google/android/gm/CanvasConversationHeaderView;

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    if-ne p1, p0, :cond_0

    move v2, v7

    .line 188
    :goto_0
    return v2

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    .line 184
    goto :goto_0

    .line 187
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    move-object v1, v0

    .line 188
    .local v1, other:Lcom/google/android/gm/ConversationInfo;
    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    iget-wide v4, v1, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    iget-wide v4, v1, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    iget-wide v4, v1, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    iget-wide v4, v1, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    return-wide v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalMessageId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    return-wide v0
.end method

.method public getMaxMessageId()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    return-wide v0
.end method

.method public getServerMessageId()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImportant()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFaded(Z)V
    .locals 2
    .parameter "faded"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mView:Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mView:Lcom/google/android/gm/CanvasConversationHeaderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;->setFaded(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public updateLabel(Lcom/google/android/gm/provider/Label;Z)V
    .locals 2
    .parameter "label"
    .parameter "added"

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, canonicalname:Ljava/lang/String;
    const-string v1, "^^important"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const-string v0, "^io_im"

    .line 217
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 218
    iget-object v1, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_1
    return-void

    .line 211
    :cond_1
    const-string v1, "^^unimportant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v0, "^io_im"

    .line 214
    if-nez p2, :cond_2

    const/4 v1, 0x1

    move p2, v1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move p2, v1

    goto :goto_2

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public updateMaxMessageId(J)V
    .locals 0
    .parameter "maxMessageId"

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    .line 229
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gm/provider/LabelManager;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method
