.class public Lcom/android/contacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/android/contacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 79
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .parameter "entry"

    .prologue
    .line 308
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 309
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 311
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 314
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;
    .locals 5
    .parameter "before"

    .prologue
    .line 86
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 87
    .local v0, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 88
    iget-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 90
    .local v2, namedValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 92
    .end local v2           #namedValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "mimeType"
    .parameter "lazyCreate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 209
    .local v0, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 210
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;
    .locals 10
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 103
    iget-object v7, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 104
    .local v7, remoteValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p0, :cond_1

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 136
    :goto_0
    return-object v8

    .line 107
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/model/EntityDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 118
    .restart local p0
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 121
    iget-object v8, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 122
    .local v5, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 123
    .local v6, remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 126
    .local v0, childId:Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 127
    .local v3, localEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 129
    .local v4, merged:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .end local v0           #childId:Ljava/lang/Long;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #localEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v4           #merged:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v6           #remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    move-object v8, p0

    .line 136
    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 352
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "entry"

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, mimeType:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    .line 363
    .local v3, isContactInsert:Z
    if-nez v3, :cond_0

    .line 365
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 366
    .local v0, beforeId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 367
    .local v1, beforeVersion:Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 375
    .end local v0           #beforeId:Ljava/lang/Long;
    .end local v1           #beforeVersion:Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 369
    .restart local v0       #beforeId:Ljava/lang/Long;
    .restart local v1       #beforeVersion:Ljava/lang/Long;
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 371
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 372
    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 373
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 385
    .local v4, firstIndex:I
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v8

    .line 386
    .local v8, isContactInsert:Z
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v7

    .line 387
    .local v7, isContactDelete:Z
    if-nez v8, :cond_4

    if-nez v7, :cond_4

    const/4 v11, 0x1

    move v9, v11

    .line 389
    .local v9, isContactUpdate:Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 393
    .local v1, beforeId:Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 397
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v12, "aggregation_mode"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 401
    :cond_0
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    sget-object v12, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 402
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 405
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 406
    .local v10, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 408
    .local v3, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_2

    .line 410
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 411
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 412
    if-eqz v8, :cond_5

    .line 414
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 423
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 387
    .end local v1           #beforeId:Ljava/lang/Long;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #isContactUpdate:Z
    .end local v10           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    const/4 v11, 0x0

    move v9, v11

    goto :goto_0

    .line 417
    .restart local v1       #beforeId:Ljava/lang/Long;
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #isContactUpdate:Z
    .restart local v10       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_5
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 419
    :cond_6
    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    .line 421
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "When parent insert, child must be also"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 427
    .end local v3           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v4, :cond_9

    const/4 v11, 0x1

    move v0, v11

    .line 428
    .local v0, addedOperations:Z
    :goto_3
    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 430
    const/4 v11, 0x2

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_8
    :goto_4
    return-void

    .line 427
    .end local v0           #addedOperations:Z
    :cond_9
    const/4 v11, 0x0

    move v0, v11

    goto :goto_3

    .line 436
    .restart local v0       #addedOperations:Z
    :cond_a
    if-eqz v8, :cond_8

    .line 438
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 439
    const-string v11, "aggregation_mode"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 440
    const-string v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 441
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "beforeId"
    .parameter "mode"

    .prologue
    .line 451
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 452
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 454
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "object"

    .prologue
    const/4 v8, 0x0

    .line 288
    instance-of v6, p1, Lcom/android/contacts/model/EntityDelta;

    if-eqz v6, :cond_4

    .line 289
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    move-object v5, v0

    .line 292
    .local v5, other:Lcom/android/contacts/model/EntityDelta;
    iget-object v6, v5, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v8

    .line 304
    .end local v5           #other:Lcom/android/contacts/model/EntityDelta;
    :goto_0
    return v6

    .line 294
    .restart local v5       #other:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 295
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 297
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-direct {v5, v1}, Lcom/android/contacts/model/EntityDelta;->containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v8

    goto :goto_0

    .line 302
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .end local v5           #other:Lcom/android/contacts/model/EntityDelta;
    :cond_4
    move v6, v8

    .line 304
    goto :goto_0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 245
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 246
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 247
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "childId"

    .prologue
    const/4 v5, 0x0

    .line 259
    if-nez p1, :cond_0

    move-object v4, v5

    .line 272
    :goto_0
    return-object v4

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 266
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 267
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 268
    goto :goto_0

    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v4, v5

    .line 272
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .parameter "onlyVisible"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 283
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .parameter "mimeType"
    .parameter "onlyVisible"

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 222
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 230
    :goto_0
    return v4

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 227
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    move v4, v1

    .line 230
    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 152
    invoke-direct {p0, p1, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 153
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_0

    move-object v3, v5

    .line 162
    .end local p0
    :goto_0
    return-object v3

    .line 155
    .restart local p0
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 156
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 157
    goto :goto_0

    .line 162
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v3, p0

    goto :goto_0

    .restart local p0
    :cond_3
    move-object v3, v5

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 7
    .parameter "mimeType"
    .parameter "forceSelection"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 180
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 181
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_0

    move-object v4, v5

    .line 200
    .end local p0
    :goto_0
    return-object v4

    .line 183
    .restart local p0
    :cond_0
    const/4 v3, 0x0

    .line 184
    .local v3, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 185
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    move-object v3, v0

    goto :goto_1

    .line 192
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez p2, :cond_4

    move-object v4, v5

    .line 193
    goto :goto_0

    .line 197
    :cond_4
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 198
    goto :goto_0

    .line 200
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v4, p0

    goto :goto_0

    .restart local p0
    :cond_6
    move-object v4, v5

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 321
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 322
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 323
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 324
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 327
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 477
    .local v2, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 478
    .local v3, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 479
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 480
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 481
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v5, ") = {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 336
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 337
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 341
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    const-string v5, "\n}\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 465
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    .line 466
    .local v4, size:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 468
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 469
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 470
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 473
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method
