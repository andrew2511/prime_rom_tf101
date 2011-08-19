.class public Lcom/google/android/gm/SenderInfoFetcher;
.super Ljava/lang/Object;
.source "SenderInfoFetcher.java"


# static fields
.field private static final PRESENCE_CLASS_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAddresses:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gm/SenderInfoFetcher$1;

    invoke-direct {v0}, Lcom/google/android/gm/SenderInfoFetcher$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/SenderInfoFetcher;->PRESENCE_CLASS_NAMES:Ljava/util/HashMap;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/SenderInfoFetcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/Set;)V
    .locals 1
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/gm/SenderInfoFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 65
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/SenderInfoFetcher;->mAddresses:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method private static final appendJsString(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "s"
    .parameter "sb"

    .prologue
    const/16 v0, 0x27

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->jsEscape(Ljava/lang/CharSequence;Ljava/lang/Appendable;)V

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getUpdateJson()Ljava/lang/String;
    .locals 25

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/SenderInfoFetcher;->mAddresses:[Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    array-length v0, v0

    move/from16 v16, v0

    .line 82
    .local v16, numAddresses:I
    if-nez v16, :cond_0

    .line 83
    const/4 v3, 0x0

    .line 154
    :goto_0
    return-object v3

    .line 87
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 90
    .local v19, query:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 91
    if-eqz v14, :cond_1

    .line 92
    const/16 v3, 0x2c

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    const/16 v3, 0x3f

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 96
    :cond_2
    const/16 v3, 0x29

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/SenderInfoFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gm/SenderInfoFetcher;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/SenderInfoFetcher;->mAddresses:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 102
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 103
    const-string v3, ""

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v24

    .line 109
    .local v24, statusClasses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    .line 112
    .local v18, photos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_6

    .line 114
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, email:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 117
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 118
    .local v22, status:I
    sget-object v3, Lcom/google/android/gm/SenderInfoFetcher;->PRESENCE_CLASS_NAMES:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    sget-object v3, Lcom/google/android/gm/SenderInfoFetcher;->PRESENCE_CLASS_NAMES:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    move-object v1, v12

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v22           #status:I
    :cond_4
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 124
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 125
    .local v9, contactId:J
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 128
    .local v21, src:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v9           #contactId:J
    .end local v21           #src:Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 133
    .end local v12           #email:Ljava/lang/String;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 138
    .local v20, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    .line 139
    .local v13, first:Z
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Sets$SetView;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 140
    .restart local v12       #email:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 141
    .local v23, statusClass:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 142
    .local v17, photoSrc:Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 143
    const/4 v13, 0x0

    .line 147
    :goto_4
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gm/SenderInfoFetcher;->appendJsString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 148
    const-string v3, ","

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gm/SenderInfoFetcher;->appendJsString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 150
    const-string v3, ","

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gm/SenderInfoFetcher;->appendJsString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 145
    :cond_8
    const-string v3, ","

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 153
    .end local v12           #email:Ljava/lang/String;
    .end local v17           #photoSrc:Ljava/lang/String;
    .end local v23           #statusClass:Ljava/lang/String;
    :cond_9
    const/16 v3, 0x5d

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method
