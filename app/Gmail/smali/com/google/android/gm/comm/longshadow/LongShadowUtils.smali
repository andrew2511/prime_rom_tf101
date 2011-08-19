.class public Lcom/google/android/gm/comm/longshadow/LongShadowUtils;
.super Ljava/lang/Object;
.source "LongShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;
    }
.end annotation


# static fields
.field private static sGmail:Lcom/google/android/gm/provider/Gmail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->isUserLabel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J
    .locals 3
    .parameter "gmail"
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v0

    .line 186
    .local v0, cursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 194
    :goto_0
    return-wide v1

    .line 192
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 194
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v1
.end method

.method public static declared-synchronized getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 29
    const-class v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/google/android/gm/provider/Gmail;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/Gmail;-><init>(Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;

    .line 33
    :cond_0
    sget-object v1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "label"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, canonicalName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->isUserLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isDisplayableSystemLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDisplayableLabels(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, unfilteredLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 161
    .local v0, filteredLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 162
    .local v3, labelList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 166
    .local v4, numLabels:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 167
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 168
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-static {p0, v2}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    return-object v0
.end method

.method private static isUserLabel(Ljava/lang/String;)Z
    .locals 3
    .parameter "label"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
