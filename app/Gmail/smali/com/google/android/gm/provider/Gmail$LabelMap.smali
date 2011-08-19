.class public final Lcom/google/android/gm/provider/Gmail$LabelMap;
.super Ljava/util/Observable;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;
    }
.end annotation


# static fields
.field private static final EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;


# instance fields
.field private mCanonicalNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelIdCached:J

.field private mLabelIdChat:J

.field private mLabelIdDraft:J

.field private mLabelIdIgnored:J

.field private mLabelIdImportant:J

.field private mLabelIdImportantImap:J

.field private mLabelIdInbox:J

.field private mLabelIdMarkImportant:J

.field private mLabelIdMarkUnimportant:J

.field private mLabelIdMarkedImportant:J

.field private mLabelIdMarkedNotImportant:J

.field private mLabelIdOutbox:J

.field private mLabelIdSent:J

.field private mLabelIdSpam:J

.field private mLabelIdStarred:J

.field private mLabelIdToBeScored:J

.field private mLabelIdTrash:J

.field private mLabelIdUnread:J

.field private mLabelIdVoicemail:J

.field private mLabelsSynced:Z

.field private mQueryMap:Landroid/content/ContentQueryMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1890
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$LabelMap;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "contentResolver"
    .parameter "cursor"
    .parameter "keepUpdated"

    .prologue
    .line 1928
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 1915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Z

    .line 1929
    invoke-direct {p0, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->init(Landroid/database/Cursor;)V

    .line 1930
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 7
    .parameter "contentResolver"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 1917
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 1915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Z

    .line 1918
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1921
    :cond_0
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1922
    .local v1, queryUri:Landroid/net/Uri;
    const-string v0, "1"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1923
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1924
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/Gmail$LabelMap;->init(Landroid/database/Cursor;)V

    .line 1925
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/Gmail$LabelMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->updateDataStructures()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/Gmail$LabelMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->setChanged()V

    return-void
.end method

.method private checkLabelsSynced()V
    .locals 2

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LabelMap not initalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_0
    return-void
.end method

.method private getLabelIdValues(J)Landroid/content/ContentValues;
    .locals 3
    .parameter "labelId"

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2149
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2152
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/Gmail$LabelMap;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1933
    new-instance v0, Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;

    const-string v1, "_id"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    .line 1934
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    .line 1935
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/google/android/gm/provider/Gmail$LabelMap$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/Gmail$LabelMap$1;-><init>(Lcom/google/android/gm/provider/Gmail$LabelMap;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 1942
    return-void
.end method

.method private declared-synchronized updateDataStructures()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1956
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1958
    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v5}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1959
    .local v4, row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1960
    .local v2, labelId:J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "canonicalName"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    const-string v5, "^f"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1965
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J

    .line 2004
    :cond_0
    :goto_1
    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdChat:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    iget-wide v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdVoicemail:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1956
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #labelId:J
    .end local v4           #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1966
    .restart local v0       #canonicalName:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #labelId:J
    .restart local v4       #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_1
    :try_start_1
    const-string v5, "^i"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1967
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J

    goto :goto_1

    .line 1968
    :cond_2
    const-string v5, "^r"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1969
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J

    goto :goto_1

    .line 1970
    :cond_3
    const-string v5, "^u"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1971
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J

    goto :goto_1

    .line 1972
    :cond_4
    const-string v5, "^k"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1973
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J

    goto :goto_1

    .line 1974
    :cond_5
    const-string v5, "^s"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1975
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J

    goto :goto_1

    .line 1976
    :cond_6
    const-string v5, "^t"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1977
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J

    goto/16 :goto_1

    .line 1978
    :cond_7
    const-string v5, "^b"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1979
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdChat:J

    goto/16 :goto_1

    .line 1980
    :cond_8
    const-string v5, "^g"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1981
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J

    goto/16 :goto_1

    .line 1982
    :cond_9
    const-string v5, "^vm"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1983
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdVoicemail:J

    goto/16 :goto_1

    .line 1984
    :cond_a
    const-string v5, "^^cached"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1985
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdCached:J

    goto/16 :goto_1

    .line 1986
    :cond_b
    const-string v5, "^^out"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1987
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdOutbox:J

    goto/16 :goto_1

    .line 1988
    :cond_c
    const-string v5, "^io_im"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1989
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdImportantImap:J

    goto/16 :goto_1

    .line 1990
    :cond_d
    const-string v5, "^^important"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1991
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkImportant:J

    goto/16 :goto_1

    .line 1992
    :cond_e
    const-string v5, "^^unimportant"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1993
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkUnimportant:J

    goto/16 :goto_1

    .line 1994
    :cond_f
    const-string v5, "^im"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1995
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdImportant:J

    goto/16 :goto_1

    .line 1996
    :cond_10
    const-string v5, "^imi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1997
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkedImportant:J

    goto/16 :goto_1

    .line 1998
    :cond_11
    const-string v5, "^imn"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1999
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkedNotImportant:J

    goto/16 :goto_1

    .line 2000
    :cond_12
    const-string v5, "^io_ns"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2001
    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdToBeScored:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2004
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2015
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v2           #labelId:J
    .end local v4           #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_14
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 2163
    return-void
.end method

.method public getCanonicalName(J)Ljava/lang/String;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2124
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getLabelId(Ljava/lang/String;)J
    .locals 3
    .parameter "canonicalName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2143
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown canonical name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdCached()J
    .locals 2

    .prologue
    .line 2072
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2073
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdCached:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2072
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdDraft()J
    .locals 2

    .prologue
    .line 2032
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2033
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdIgnored()J
    .locals 2

    .prologue
    .line 2062
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2063
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdInbox()J
    .locals 2

    .prologue
    .line 2027
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2028
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2027
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdOutbox()J
    .locals 2

    .prologue
    .line 2077
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2078
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdOutbox:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2077
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdSent()J
    .locals 2

    .prologue
    .line 2022
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2023
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdSpam()J
    .locals 2

    .prologue
    .line 2047
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2048
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdStarred()J
    .locals 2

    .prologue
    .line 2052
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2053
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdTrash()J
    .locals 2

    .prologue
    .line 2042
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2043
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2042
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdUnread()J
    .locals 2

    .prologue
    .line 2037
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2038
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdVoicemail()J
    .locals 2

    .prologue
    .line 2067
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2068
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdVoicemail:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(J)Ljava/lang/String;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2131
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumConversations(J)I
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2103
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "numConversations"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumUnreadConversations(J)I
    .locals 4
    .parameter "labelId"

    .prologue
    .line 2108
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "numUnreadConversations"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2112
    .local v1, unreadConversations:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 2113
    .local v0, result:I
    if-eqz v1, :cond_0

    .line 2114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 2117
    :cond_0
    :goto_0
    return v0

    .line 2114
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method getQueryMap()Landroid/content/ContentQueryMap;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method public declared-synchronized labelsSynced()Z
    .locals 1

    .prologue
    .line 1948
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requery()V
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    .line 2159
    return-void
.end method
