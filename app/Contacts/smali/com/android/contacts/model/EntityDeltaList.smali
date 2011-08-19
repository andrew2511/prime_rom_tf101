.class public Lcom/android/contacts/model/EntityDeltaList;
.super Ljava/util/ArrayList;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDeltaList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/EntityDeltaList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 9
    .parameter
    .parameter "index1"
    .parameter "index2"
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 236
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 238
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 241
    .local v3, rawContactId1:Ljava/lang/Long;
    aget v0, p4, p2

    .line 242
    .local v0, backRef1:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 243
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 250
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 251
    .local v4, rawContactId2:Ljava/lang/Long;
    aget v1, p4, p3

    .line 252
    .local v1, backRef2:I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 253
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v1           #backRef2:I
    .end local v4           #rawContactId2:Ljava/lang/Long;
    :cond_0
    return-void

    .line 244
    .restart local p0
    :cond_1
    if-ltz v0, :cond_0

    .line 245
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 254
    .end local p0
    .restart local v1       #backRef2:I
    .restart local v4       #rawContactId2:Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_0

    .line 255
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .parameter
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    .line 222
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 223
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 224
    if-eq v1, v2, :cond_0

    .line 225
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 223
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Entity;",
            ">;)",
            "Lcom/android/contacts/model/EntityDeltaList;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Entity;>;"
    new-instance v2, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v2}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 85
    .local v2, state:Lcom/android/contacts/model/EntityDeltaList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 88
    .local v0, before:Landroid/content/Entity;
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 89
    .local v1, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0           #before:Landroid/content/Entity;
    .end local v1           #entity:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    return-object v2
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 7
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 68
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 72
    .local v6, iterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v6}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 1
    .parameter "delta"

    .prologue
    .line 56
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 57
    .local v0, state:Lcom/android/contacts/model/EntityDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 6
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 100
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/model/EntityDeltaList;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 103
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 104
    .local v4, remoteEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 107
    .local v3, rawContactId:Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 108
    .local v1, localEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/EntityDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v2

    .line 110
    .local v2, merged:Lcom/android/contacts/model/EntityDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v1           #localEntity:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #merged:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #rawContactId:Ljava/lang/Long;
    .end local v4           #remoteEntity:Lcom/android/contacts/model/EntityDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 209
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 211
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 128
    .local v8, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v16

    .line 129
    .local v16, rawContactId:J
    const/4 v10, -0x1

    .line 132
    .local v10, firstInsertRow:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    .line 133
    .local v7, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 136
    .end local v7           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 137
    .local v4, assertMark:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object v5, v0

    .line 139
    .local v5, backRefs:[I
    const/16 v18, 0x0

    .line 142
    .local v18, rawContactIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    .line 143
    .restart local v7       #delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 144
    .local v9, firstBatch:I
    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v13

    .line 145
    .local v13, isInsert:Z
    add-int/lit8 v19, v18, 0x1

    .end local v18           #rawContactIndex:I
    .local v19, rawContactIndex:I
    if-eqz v13, :cond_1

    move/from16 v20, v9

    :goto_2
    aput v20, v5, v18

    .line 147
    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object v3, v0

    .local v3, arr$:[J
    array-length v15, v3

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_3
    if-ge v12, v15, :cond_3

    aget-wide v20, v3, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 153
    .local v14, joinedRawContactId:Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 154
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "raw_contact_id1"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 155
    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-eqz v20, :cond_2

    .line 156
    const-string v20, "raw_contact_id2"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 161
    :goto_4
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 145
    .end local v3           #arr$:[J
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #i$:I
    .end local v14           #joinedRawContactId:Ljava/lang/Long;
    .end local v15           #len$:I
    :cond_1
    const/16 v20, -0x1

    goto :goto_2

    .line 158
    .restart local v3       #arr$:[J
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #i$:I
    .restart local v14       #joinedRawContactId:Ljava/lang/Long;
    .restart local v15       #len$:I
    :cond_2
    const-string v20, "raw_contact_id2"

    move-object v0, v6

    move-object/from16 v1, v20

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 166
    .end local v3           #arr$:[J
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #i$:I
    .end local v14           #joinedRawContactId:Ljava/lang/Long;
    .end local v15           #len$:I
    :cond_3
    if-nez v13, :cond_4

    move/from16 v18, v19

    .end local v19           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    goto :goto_1

    .line 169
    .end local v18           #rawContactIndex:I
    .restart local v19       #rawContactIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move/from16 v18, v19

    .end local v19           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    goto :goto_1

    .line 171
    .end local v18           #rawContactIndex:I
    .restart local v19       #rawContactIndex:I
    :cond_5
    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-eqz v20, :cond_6

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 174
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "raw_contact_id1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 175
    const-string v20, "raw_contact_id2"

    move-object v0, v6

    move-object/from16 v1, v20

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_5
    move/from16 v18, v19

    .line 190
    .end local v19           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    goto/16 :goto_1

    .line 178
    .end local v18           #rawContactIndex:I
    .restart local v19       #rawContactIndex:I
    :cond_6
    const/16 v20, -0x1

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 180
    move v10, v9

    goto :goto_5

    .line 184
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 185
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "raw_contact_id1"

    move-object v0, v6

    move-object/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 187
    const-string v20, "raw_contact_id2"

    move-object v0, v6

    move-object/from16 v1, v20

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 192
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v9           #firstBatch:I
    .end local v13           #isInsert:Z
    .end local v19           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 193
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 197
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    move v1, v4

    if-ne v0, v1, :cond_a

    .line 198
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 201
    :cond_a
    return-object v8
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 270
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 271
    .local v2, rawContactId:Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 275
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #rawContactId:Ljava/lang/Long;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 294
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    move-object v1, p0

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .parameter "index"

    .prologue
    .line 282
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 284
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 285
    .local v1, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 289
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v1           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .parameter "rawContactId"

    .prologue
    const/4 v4, -0x1

    .line 301
    if-nez p1, :cond_0

    move v3, v4

    .line 309
    :goto_0
    return v3

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 303
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 305
    .local v0, currentId:Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 306
    goto :goto_0

    .line 303
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentId:Ljava/lang/Long;
    :cond_2
    move v3, v4

    .line 309
    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 341
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 375
    .local v1, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 377
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 381
    return-void

    .line 380
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0
    .parameter "rawContactIds"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 349
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 364
    .local v2, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 366
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 368
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 369
    iget-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return-void

    .line 369
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
