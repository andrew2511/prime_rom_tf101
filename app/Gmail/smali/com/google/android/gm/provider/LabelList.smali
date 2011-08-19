.class public Lcom/google/android/gm/provider/LabelList;
.super Ljava/lang/Object;
.source "LabelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    }
.end annotation


# static fields
.field private static sAutoUpdateLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLabelChangeObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sLabelListObserverLock:Ljava/lang/Object;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mIncludeHiddenLabels:Z

.field private mLabelUri:Landroid/net/Uri;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/LabelList;->sLabelListObserverLock:Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelList;->sLabelChangeObservers:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "labelQueryUri"
    .parameter "includeHiddenLabels"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/provider/LabelList;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/provider/LabelList;->mList:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelList;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelList;->mAccount:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/google/android/gm/provider/LabelList;->mIncludeHiddenLabels:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object v1, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 58
    :try_start_0
    new-instance v7, Lcom/google/android/gm/provider/LabelManager$LabelFactory;

    invoke-direct {v7, p1, p2, v6}, Lcom/google/android/gm/provider/LabelManager$LabelFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 59
    .local v7, factory:Lcom/google/android/gm/provider/LabelManager$LabelFactory;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v7, v6}, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->newLabel(Landroid/database/Cursor;)Lcom/google/android/gm/provider/Label;

    move-result-object v8

    .line 61
    .local v8, label:Lcom/google/android/gm/provider/Label;
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v7           #factory:Lcom/google/android/gm/provider/LabelManager$LabelFactory;
    .end local v8           #label:Lcom/google/android/gm/provider/Label;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v7       #factory:Lcom/google/android/gm/provider/LabelManager$LabelFactory;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    .end local v7           #factory:Lcom/google/android/gm/provider/LabelManager$LabelFactory;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gm/provider/LabelList;->sLabelListObserverLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/LabelList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/LabelList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelList;->onLabelDataSetChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/LabelList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onLabelDataSetChanged()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 175
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "index"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/provider/Label;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 4
    .parameter "canonicalName"

    .prologue
    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v2

    .line 96
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 98
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 103
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #length:I
    :goto_1
    return-object v3

    .line 96
    .restart local v0       #i:I
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #length:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public registerForLabelChanges()V
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/google/android/gm/provider/LabelList;->mAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->getLabelUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/LabelList;->mLabelUri:Landroid/net/Uri;

    .line 146
    sget-object v2, Lcom/google/android/gm/provider/LabelList;->sLabelListObserverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    sget-object v3, Lcom/google/android/gm/provider/LabelList;->sLabelChangeObservers:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gm/provider/LabelList;->mLabelUri:Landroid/net/Uri;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    .line 149
    .local v1, observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    .end local v1           #observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    iget-object v3, p0, Lcom/google/android/gm/provider/LabelList;->mAccount:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gm/provider/LabelList;->mIncludeHiddenLabels:Z

    invoke-direct {v1, p0, v3, v4}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;-><init>(Lcom/google/android/gm/provider/LabelList;Ljava/lang/String;Z)V

    .line 152
    .restart local v1       #observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    sget-object v3, Lcom/google/android/gm/provider/LabelList;->sLabelChangeObservers:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gm/provider/LabelList;->mLabelUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    sget-object v3, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 157
    .local v0, listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    if-nez v0, :cond_1

    .line 159
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 160
    sget-object v3, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v2, p0, Lcom/google/android/gm/provider/LabelList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/LabelList;->mLabelUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    return-void

    .line 164
    .end local v0           #listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    .end local v1           #observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public unregisterForLabelChanges()V
    .locals 6

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, unregisterContentObserver:Z
    sget-object v3, Lcom/google/android/gm/provider/LabelList;->sLabelListObserverLock:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_0
    sget-object v4, Lcom/google/android/gm/provider/LabelList;->sLabelChangeObservers:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gm/provider/LabelList;->mLabelUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    .line 120
    .local v1, observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    if-nez v1, :cond_1

    .line 122
    monitor-exit v3

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget-object v4, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 126
    .local v0, listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    if-eqz v0, :cond_2

    .line 128
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 132
    sget-object v4, Lcom/google/android/gm/provider/LabelList;->sAutoUpdateLists:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v2, 0x1

    .line 136
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/google/android/gm/provider/LabelList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 136
    .end local v0           #listSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/provider/LabelList;>;"
    .end local v1           #observer:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
