.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .registers 10
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 71
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 72
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 73
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 75
    array-length v1, p4

    .line 76
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v1, :cond_2e

    .line 81
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 83
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_46

    .line 86
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 88
    :cond_46
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_9e

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1e
    if-eqz v0, :cond_96

    .line 181
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 184
    :goto_2e
    return-object v2

    .line 96
    .end local v1           #type:I
    :sswitch_2f
    const-string/jumbo v0, "storage_id"

    .line 97
    const/4 v1, 0x6

    .line 98
    .restart local v1       #type:I
    goto :goto_1e

    .line 100
    .end local v1           #type:I
    :sswitch_34
    const-string v0, "format"

    .line 101
    const/4 v1, 0x4

    .line 102
    .restart local v1       #type:I
    goto :goto_1e

    .line 105
    .end local v1           #type:I
    :sswitch_38
    const/4 v1, 0x4

    .line 106
    .restart local v1       #type:I
    goto :goto_1e

    .line 108
    .end local v1           #type:I
    :sswitch_3a
    const-string v0, "_size"

    .line 109
    const/16 v1, 0x8

    .line 110
    .restart local v1       #type:I
    goto :goto_1e

    .line 112
    .end local v1           #type:I
    :sswitch_3f
    const-string v0, "_data"

    .line 113
    const v1, 0xffff

    .line 114
    .restart local v1       #type:I
    goto :goto_1e

    .line 116
    .end local v1           #type:I
    :sswitch_45
    const-string/jumbo v0, "title"

    .line 117
    const v1, 0xffff

    .line 118
    .restart local v1       #type:I
    goto :goto_1e

    .line 120
    .end local v1           #type:I
    :sswitch_4c
    const-string v0, "date_modified"

    .line 121
    const v1, 0xffff

    .line 122
    .restart local v1       #type:I
    goto :goto_1e

    .line 124
    .end local v1           #type:I
    :sswitch_52
    const-string v0, "date_added"

    .line 125
    const v1, 0xffff

    .line 126
    .restart local v1       #type:I
    goto :goto_1e

    .line 128
    .end local v1           #type:I
    :sswitch_58
    const-string/jumbo v0, "year"

    .line 129
    const v1, 0xffff

    .line 130
    .restart local v1       #type:I
    goto :goto_1e

    .line 132
    .end local v1           #type:I
    :sswitch_5f
    const-string v0, "parent"

    .line 133
    const/4 v1, 0x6

    .line 134
    .restart local v1       #type:I
    goto :goto_1e

    .line 137
    .end local v1           #type:I
    :sswitch_63
    const-string/jumbo v0, "storage_id"

    .line 138
    const/16 v1, 0xa

    .line 139
    .restart local v1       #type:I
    goto :goto_1e

    .line 141
    .end local v1           #type:I
    :sswitch_69
    const-string v0, "duration"

    .line 142
    const/4 v1, 0x6

    .line 143
    .restart local v1       #type:I
    goto :goto_1e

    .line 145
    .end local v1           #type:I
    :sswitch_6d
    const-string/jumbo v0, "track"

    .line 146
    const/4 v1, 0x4

    .line 147
    .restart local v1       #type:I
    goto :goto_1e

    .line 149
    .end local v1           #type:I
    :sswitch_72
    const-string v0, "_display_name"

    .line 150
    const v1, 0xffff

    .line 151
    .restart local v1       #type:I
    goto :goto_1e

    .line 153
    .end local v1           #type:I
    :sswitch_78
    const v1, 0xffff

    .line 154
    .restart local v1       #type:I
    goto :goto_1e

    .line 156
    .end local v1           #type:I
    :sswitch_7c
    const v1, 0xffff

    .line 157
    .restart local v1       #type:I
    goto :goto_1e

    .line 159
    .end local v1           #type:I
    :sswitch_80
    const-string v0, "album_artist"

    .line 160
    const v1, 0xffff

    .line 161
    .restart local v1       #type:I
    goto :goto_1e

    .line 164
    .end local v1           #type:I
    :sswitch_86
    const v1, 0xffff

    .line 165
    .restart local v1       #type:I
    goto :goto_1e

    .line 167
    .end local v1           #type:I
    :sswitch_8a
    const-string v0, "composer"

    .line 168
    const v1, 0xffff

    .line 169
    .restart local v1       #type:I
    goto :goto_1e

    .line 171
    .end local v1           #type:I
    :sswitch_90
    const-string v0, "description"

    .line 172
    const v1, 0xffff

    .line 173
    .restart local v1       #type:I
    goto :goto_1e

    .line 184
    :cond_96
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_2e

    .line 94
    nop

    :sswitch_data_9e
    .sparse-switch
        0xdc01 -> :sswitch_2f
        0xdc02 -> :sswitch_34
        0xdc03 -> :sswitch_38
        0xdc04 -> :sswitch_3a
        0xdc07 -> :sswitch_3f
        0xdc09 -> :sswitch_4c
        0xdc0b -> :sswitch_5f
        0xdc41 -> :sswitch_63
        0xdc44 -> :sswitch_45
        0xdc46 -> :sswitch_78
        0xdc48 -> :sswitch_90
        0xdc4e -> :sswitch_52
        0xdc89 -> :sswitch_69
        0xdc8b -> :sswitch_6d
        0xdc8c -> :sswitch_86
        0xdc96 -> :sswitch_8a
        0xdc99 -> :sswitch_58
        0xdc9a -> :sswitch_7c
        0xdc9b -> :sswitch_80
        0xdce0 -> :sswitch_72
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "path"

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 274
    .local v1, lastSlash:I
    if-ltz v1, :cond_b

    .line 275
    add-int/lit8 v2, v1, 0x1

    .line 277
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 278
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_17

    .line 279
    add-int/lit16 v0, v2, 0xff

    .line 281
    :cond_17
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 210
    const/4 v6, 0x0

    .line 212
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 216
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_41

    move-result-object v0

    .line 223
    if-eqz v6, :cond_38

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_38
    :goto_38
    return-object v0

    .line 218
    :cond_39
    :try_start_39
    const-string v0, ""
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_41

    .line 223
    if-eqz v6, :cond_38

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 220
    :catch_41
    move-exception v0

    move-object v7, v0

    .line 223
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_48

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    move-object v0, v9

    goto :goto_38

    .line 223
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_4a
    move-exception v0

    if-eqz v6, :cond_50

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 237
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_39

    move-result-object v0

    .line 245
    if-eqz v6, :cond_30

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_30
    :goto_30
    return-object v0

    .line 239
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_31
    :try_start_31
    const-string v0, ""
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_39

    .line 245
    if-eqz v6, :cond_30

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 241
    .end local v1           #uri:Landroid/net/Uri;
    :catch_39
    move-exception v0

    move-object v7, v0

    .line 242
    .local v7, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_4a

    .line 245
    if-eqz v6, :cond_48

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    move-object v0, v8

    goto :goto_30

    .line 245
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_4a
    move-exception v0

    if-eqz v6, :cond_50

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .registers 12
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 252
    const/4 v6, 0x0

    .line 255
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    if-eqz v6, :cond_3a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 259
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_41

    .line 263
    if-eqz v6, :cond_39

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_39
    :goto_39
    return-object v0

    .line 263
    :cond_3a
    if-eqz v6, :cond_3f

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    :goto_3f
    move-object v0, v8

    .line 267
    goto :goto_39

    .line 261
    :catch_41
    move-exception v0

    .line 263
    if-eqz v6, :cond_3f

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 263
    :catchall_48
    move-exception v0

    if-eqz v6, :cond_4e

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 189
    const/4 v6, 0x0

    .line 192
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 196
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_3d

    move-result-object v0

    .line 203
    if-eqz v6, :cond_34

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-object v0

    .line 198
    :cond_35
    :try_start_35
    const-string v0, ""
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_3d

    .line 203
    if-eqz v6, :cond_34

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 200
    :catch_3d
    move-exception v0

    move-object v7, v0

    .line 203
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_44

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v0, v9

    goto :goto_34

    .line 203
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .registers 37
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 286
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-le v0, v1, :cond_10

    .line 289
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const v6, 0xa808

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 442
    :cond_f
    :goto_f
    return-object v4

    .line 294
    :cond_10
    if-nez p2, :cond_67

    .line 295
    const/4 v4, -0x1

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_51

    .line 297
    const/4 v7, 0x0

    .line 298
    .local v7, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 322
    .local v8, whereArgs:[Ljava/lang/String;
    :goto_1a
    const/16 v21, 0x0

    .line 325
    .local v21, c:Landroid/database/Cursor;
    if-gtz p3, :cond_2d

    const/4 v4, -0x1

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_2d

    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_97

    .line 326
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    move-object v6, v0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 327
    if-nez v21, :cond_97

    .line 328
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2009

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_150
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4b} :catch_12b

    .line 441
    if-eqz v21, :cond_f

    .line 442
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_f

    .line 300
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    :cond_51
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 301
    .restart local v8       #whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_64

    .line 302
    const-string v7, "parent=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1a

    .line 304
    .end local v7           #where:Ljava/lang/String;
    :cond_64
    const-string v7, "_id=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1a

    .line 308
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_67
    const/4 v4, -0x1

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_7a

    .line 310
    const-string v7, "format=?"

    .line 311
    .restart local v7       #where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .restart local v8       #whereArgs:[Ljava/lang/String;
    goto :goto_1a

    .line 313
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_7a
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 314
    .restart local v8       #whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_94

    .line 315
    const-string v7, "parent=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1a

    .line 317
    .end local v7           #where:Ljava/lang/String;
    :cond_94
    const-string v7, "_id=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_1a

    .line 332
    .restart local v21       #c:Landroid/database/Cursor;
    :cond_97
    if-nez v21, :cond_11a

    const/4 v4, 0x1

    move/from16 v23, v4

    .line 333
    .local v23, count:I
    :goto_9c
    :try_start_9c
    const-string v4, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v9, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    array-length v4, v4

    mul-int v4, v4, v23

    const/16 v5, 0x2001

    invoke-direct {v9, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 338
    .local v9, result:Landroid/mtp/MtpPropertyList;
    const/16 v28, 0x0

    .local v28, objectIndex:I
    :goto_c8
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_26d

    .line 339
    if-eqz v21, :cond_df

    .line 340
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 341
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 p1, v0

    .line 345
    :cond_df
    const/16 v30, 0x0

    .local v30, propertyIndex:I
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    array-length v4, v4

    move/from16 v0, v30

    move v1, v4

    if-ge v0, v1, :cond_269

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    aget-object v29, v4, v30

    .line 347
    .local v29, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move v11, v0

    .line 348
    .local v11, propertyCode:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v22, v0

    .line 351
    .local v22, column:I
    sparse-switch v11, :sswitch_data_276

    .line 424
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v0

    const v5, 0xffff

    if-ne v4, v5, :cond_23c

    .line 425
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 345
    :goto_117
    add-int/lit8 v30, v30, 0x1

    goto :goto_e1

    .line 332
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :cond_11a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v23, v4

    goto/16 :goto_9c

    .line 354
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_122
    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_12a
    .catchall {:try_start_9c .. :try_end_12a} :catchall_150
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_12a} :catch_12b

    goto :goto_117

    .line 438
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catch_12b
    move-exception v4

    move-object/from16 v25, v4

    .line 439
    .local v25, e:Landroid/os/RemoteException;
    :try_start_12e
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2002

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_136
    .catchall {:try_start_12e .. :try_end_136} :catchall_150

    .line 441
    if-eqz v21, :cond_f

    .line 442
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 358
    .end local v25           #e:Landroid/os/RemoteException;
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_13d
    :try_start_13d
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 359
    .local v31, value:Ljava/lang/String;
    if-eqz v31, :cond_157

    .line 360
    invoke-static/range {v31 .. v31}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_13d .. :try_end_14f} :catchall_150
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_14f} :catch_12b

    goto :goto_117

    .line 441
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    .end local v31           #value:Ljava/lang/String;
    :catchall_150
    move-exception v4

    if-eqz v21, :cond_156

    .line 442
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_156
    throw v4

    .line 362
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    .restart local v31       #value:Ljava/lang/String;
    :cond_157
    const/16 v4, 0x2009

    :try_start_159
    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_117

    .line 367
    .end local v31           #value:Ljava/lang/String;
    :sswitch_15d
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 369
    .local v27, name:Ljava/lang/String;
    if-nez v27, :cond_16e

    .line 370
    const-string v4, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 373
    :cond_16e
    if-nez v27, :cond_181

    .line 374
    const-string v4, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 375
    if-eqz v27, :cond_181

    .line 376
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 379
    :cond_181
    if-eqz v27, :cond_18d

    .line 380
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_117

    .line 382
    :cond_18d
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_117

    .line 388
    .end local v27           #name:Ljava/lang/String;
    :sswitch_193
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_117

    .line 392
    :sswitch_1a9
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 393
    .local v32, year:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0101T000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 394
    .local v24, dateTime:Ljava/lang/String;
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_117

    .line 398
    .end local v24           #dateTime:Ljava/lang/String;
    .end local v32           #year:I
    :sswitch_1cf
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 399
    .local v13, puid:J
    const/16 v4, 0x20

    shl-long/2addr v13, v4

    .line 400
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v4, v0

    add-long/2addr v13, v4

    .line 401
    const/16 v12, 0xa

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_117

    .line 404
    .end local v13           #puid:J
    :sswitch_1e4
    const/16 v18, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_117

    .line 408
    :sswitch_1fa
    const-string v4, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_117

    .line 412
    :sswitch_20f
    const-string v4, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_117

    .line 416
    :sswitch_224
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v26

    .line 417
    .local v26, genre:Ljava/lang/String;
    if-eqz v26, :cond_235

    .line 418
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_117

    .line 420
    :cond_235
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_117

    .line 426
    .end local v26           #genre:Ljava/lang/String;
    :cond_23c
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v0

    if-nez v4, :cond_255

    .line 427
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_117

    .line 429
    :cond_255
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_267
    .catchall {:try_start_159 .. :try_end_267} :catchall_150
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_267} :catch_12b

    goto/16 :goto_117

    .line 338
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_269
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_c8

    .line 441
    .end local v30           #propertyIndex:I
    :cond_26d
    if-eqz v21, :cond_272

    .line 442
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_272
    move-object v4, v9

    goto/16 :goto_f

    .line 351
    nop

    :sswitch_data_276
    .sparse-switch
        0xdc03 -> :sswitch_122
        0xdc07 -> :sswitch_13d
        0xdc09 -> :sswitch_193
        0xdc41 -> :sswitch_1cf
        0xdc44 -> :sswitch_15d
        0xdc46 -> :sswitch_1fa
        0xdc4e -> :sswitch_193
        0xdc8b -> :sswitch_1e4
        0xdc8c -> :sswitch_224
        0xdc99 -> :sswitch_1a9
        0xdc9a -> :sswitch_20f
    .end sparse-switch
.end method
