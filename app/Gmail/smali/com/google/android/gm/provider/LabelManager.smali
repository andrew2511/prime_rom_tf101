.class public Lcom/google/android/gm/provider/LabelManager;
.super Ljava/lang/Object;
.source "LabelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/LabelManager$LabelFactory;,
        Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;
    }
.end annotation


# static fields
.field private static final FORCED_INCLUDED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAsyncLabelFetchHandler:Landroid/os/Handler;

.field private static final sCachedLabels:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^i"

    aput-object v1, v0, v3

    const-string v1, "^iim"

    aput-object v1, v0, v4

    const-string v1, "^t"

    aput-object v1, v0, v5

    const-string v1, "^io_im"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "^b"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^^out"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^r"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^all"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^s"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^k"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^^out"

    aput-object v1, v0, v3

    const-string v1, "^r"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_LABELS:Ljava/util/Set;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "^i"

    aput-object v1, v0, v3

    const-string v1, "^f"

    aput-object v1, v0, v4

    const-string v1, "^iim"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    .line 88
    const-string v0, "\\^\\*\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 297
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    .line 310
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method private static declared-synchronized getAsyncLabelHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 299
    const-class v1, Lcom/google/android/gm/provider/LabelManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 301
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "getAsyncLabel"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 305
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    .line 307
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 299
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getForcedIncludedLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getForcedIncludedOrPartialLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getFreshLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"
    .parameter "useCache"

    .prologue
    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, accountLabelKey:Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz p3, :cond_0

    .line 239
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 240
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 256
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .local v2, label:Lcom/google/android/gm/provider/Label;
    :goto_0
    return-object v2

    .line 245
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .local v3, labelQueryUri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 248
    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 250
    new-instance v4, Lcom/google/android/gm/provider/LabelList;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v3, v5}, Lcom/google/android/gm/provider/LabelList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 252
    .local v4, labels:Lcom/google/android/gm/provider/LabelList;
    invoke-virtual {v4}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 253
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 254
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v1

    .line 256
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .restart local v2       #label:Lcom/google/android/gm/provider/Label;
    goto :goto_0
.end method

.method public static getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"
    .parameter "useCache"
    .parameter "callback"

    .prologue
    .line 273
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getAsyncLabelHandler()Landroid/os/Handler;

    move-result-object v7

    .line 278
    .local v7, handler:Landroid/os/Handler;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 280
    .local v5, callerHandler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/gm/provider/LabelManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/LabelManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method public static getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "hiddenLabels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/gm/provider/LabelList;"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, canonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 182
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 186
    if-eqz p2, :cond_1

    .line 187
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 189
    const-string v4, "canonicalName"

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0           #i:I
    .end local v1           #numLabels:I
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 193
    :cond_1
    new-instance v3, Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, p3}, Lcom/google/android/gm/provider/LabelList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-object v3
.end method

.method public static getSortedUserMeaningfulSystemLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;

    return-object v0
.end method

.method public static parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter "context"
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-string v6, "Gmail.LabelManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string v6, "Gmail.LabelManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label query result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 118
    .local v3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz p1, :cond_2

    .line 120
    invoke-static {p0}, Lcom/google/android/gm/provider/Label;->getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 123
    .local v5, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v6, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, labelStrings:[Ljava/lang/String;
    array-length v4, v2

    .line 125
    .local v4, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 126
    aget-object v6, v2, v0

    invoke-static {v6, v5}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 127
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #labelStrings:[Ljava/lang/String;
    .end local v4           #numLabels:I
    .end local v5           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_2
    return-object v3
.end method

.method public static parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter "account"
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-string v5, "Gmail.LabelManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string v5, "Gmail.LabelManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label query result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 142
    .local v3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz p1, :cond_2

    .line 143
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, labelStrings:[Ljava/lang/String;
    array-length v4, v2

    .line 145
    .local v4, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 146
    aget-object v5, v2, v0

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 147
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #labelStrings:[Ljava/lang/String;
    .end local v4           #numLabels:I
    :cond_2
    return-object v3
.end method

.method public static serialize(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 157
    .local v2, labelCollection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/Label;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/gm/provider/Label;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gm/provider/Label;

    .line 158
    .local v3, labelList:[Lcom/google/android/gm/provider/Label;
    array-length v4, v3

    .line 159
    .local v4, numLabels:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 161
    if-lez v0, :cond_0

    .line 162
    const-string v6, "^**^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    aget-object v1, v3, v0

    .line 165
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
