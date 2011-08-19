.class public Lcom/android/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v2

    const-string v1, "fileName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 317
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 324
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 321
    goto :goto_0

    .line 322
    .end local v2           #oome:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 324
    goto :goto_0
.end method

.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 309
    const-string v0, "image/*"

    invoke-static {p1, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0, p2}, Lcom/android/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "uri"

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 103
    .local v7, callingId:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 104
    .local v13, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 105
    .local v11, id:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 106
    .local v10, format:Ljava/lang/String;
    const-string v0, "THUMBNAIL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "image/png"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 120
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v12

    goto :goto_0

    .line 120
    .end local v9           #fileName:Ljava/lang/String;
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    const/4 v0, 0x0

    .line 125
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #format:Ljava/lang/String;
    .end local v11           #id:Ljava/lang/String;
    .end local v13           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 84
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 85
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, filename:Ljava/lang/String;
    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 31
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v4, "w"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 146
    .local v14, context:Landroid/content/Context;
    const-string v4, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v14, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v27

    .line 151
    .local v27, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 152
    .local v10, accountId:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 153
    .local v20, id:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v26

    .line 155
    .local v26, saveIn:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 158
    :cond_1
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v23, newFile:Ljava/io/File;
    const/high16 v4, 0x3c00

    move-object/from16 v0, v23

    move v1, v4

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 222
    .end local v14           #context:Landroid/content/Context;
    .end local v23           #newFile:Ljava/io/File;
    .end local v26           #saveIn:Ljava/io/File;
    .end local p1
    :goto_0
    return-object v4

    .line 163
    .end local v10           #accountId:Ljava/lang/String;
    .end local v20           #id:Ljava/lang/String;
    .end local v27           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 165
    .local v12, callingId:J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v27

    .line 166
    .restart local v27       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 167
    .restart local v10       #accountId:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 168
    .restart local v20       #id:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 169
    .local v18, format:Ljava/lang/String;
    const-string v4, "THUMBNAIL"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    const/4 v4, 0x3

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 171
    .local v30, width:I
    const/4 v4, 0x4

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 172
    .local v19, height:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thmb_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 173
    .local v17, filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    .line 174
    .local v15, dir:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 176
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 178
    .local v5, attachmentUri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_data"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 180
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 182
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 188
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v29

    .line 193
    .local v29, type:Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 195
    .local v21, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v28

    .line 196
    .local v28, thumbnail:Landroid/graphics/Bitmap;
    if-nez v28, :cond_5

    .line 197
    const/4 v4, 0x0

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 185
    .end local v21           #in:Ljava/io/InputStream;
    .end local v28           #thumbnail:Landroid/graphics/Bitmap;
    .end local v29           #type:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 188
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 188
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    .end local v5           #attachmentUri:Landroid/net/Uri;
    .end local v10           #accountId:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v15           #dir:Ljava/io/File;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #format:Ljava/lang/String;
    .end local v19           #height:I
    .end local v20           #id:Ljava/lang/String;
    .end local v27           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v30           #width:I
    :catchall_1
    move-exception v4

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 199
    .restart local v5       #attachmentUri:Landroid/net/Uri;
    .restart local v10       #accountId:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v15       #dir:Ljava/io/File;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #filename:Ljava/lang/String;
    .restart local v18       #format:Ljava/lang/String;
    .restart local v19       #height:I
    .restart local v20       #id:Ljava/lang/String;
    .restart local v21       #in:Ljava/io/InputStream;
    .restart local v27       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v29       #type:Ljava/lang/String;
    .restart local v30       #width:I
    :cond_5
    const/4 v4, 0x1

    :try_start_6
    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v19

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 200
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 201
    .local v25, out:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v28

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 202
    .end local v5           #attachmentUri:Landroid/net/Uri;
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 203
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    .line 214
    .end local v11           #c:Landroid/database/Cursor;
    .end local v21           #in:Ljava/io/InputStream;
    .end local v25           #out:Ljava/io/FileOutputStream;
    .end local v28           #thumbnail:Landroid/graphics/Bitmap;
    .end local v29           #type:Ljava/lang/String;
    :cond_6
    const/high16 v4, 0x1000

    :try_start_7
    move-object/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v4

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 204
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v29       #type:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v22, v4

    .line 205
    .local v22, ioe:Ljava/io/IOException;
    :try_start_8
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 207
    const/4 v4, 0x0

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 208
    .end local v22           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object/from16 v24, v4

    .line 209
    .local v24, oome:Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 211
    const/4 v4, 0x0

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 217
    .end local v11           #c:Landroid/database/Cursor;
    .end local v15           #dir:Ljava/io/File;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v19           #height:I
    .end local v24           #oome:Ljava/lang/OutOfMemoryError;
    .end local v29           #type:Ljava/lang/String;
    .end local v30           #width:I
    .restart local p1
    :cond_7
    :try_start_a
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v4

    .line 222
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 248
    .local v10, callingId:J
    if-nez p2, :cond_0

    .line 249
    const/4 v2, 0x2

    :try_start_0
    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v19, v2

    .end local p2
    .local v19, projection:[Ljava/lang/String;
    move-object/from16 p2, v19

    .line 256
    .end local v19           #projection:[Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 257
    .local v21, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 258
    .local v8, accountId:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 259
    .local v17, id:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 260
    .local v15, format:Ljava/lang/String;
    const/16 v18, 0x0

    .line 261
    .local v18, name:Ljava/lang/String;
    const/16 v22, -0x1

    .line 262
    .local v22, size:I
    const/4 v13, 0x0

    .line 264
    .local v13, contentUri:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 268
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 270
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 271
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 276
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 279
    new-instance v20, Landroid/database/MatrixCursor;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 280
    .local v20, ret:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 281
    .local v23, values:[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    .local v14, count:I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_6

    .line 282
    aget-object v12, p2, v16

    .line 283
    .local v12, column:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    aput-object v17, v23, v16

    .line 281
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 273
    .end local v12           #column:Ljava/lang/String;
    .end local v14           #count:I
    .end local v16           #i:I
    .end local v20           #ret:Landroid/database/MatrixCursor;
    .end local v23           #values:[Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .line 276
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-object v2

    .line 276
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    .end local v8           #accountId:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #contentUri:Ljava/lang/String;
    .end local v15           #format:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #size:I
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 286
    .restart local v8       #accountId:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #column:Ljava/lang/String;
    .restart local v13       #contentUri:Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v15       #format:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #id:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v20       #ret:Landroid/database/MatrixCursor;
    .restart local v21       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22       #size:I
    .restart local v23       #values:[Ljava/lang/Object;
    :cond_3
    :try_start_4
    const-string v2, "_data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    aput-object v13, v23, v16

    goto :goto_1

    .line 289
    :cond_4
    const-string v2, "_display_name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    aput-object v18, v23, v16

    goto :goto_1

    .line 292
    :cond_5
    const-string v2, "_size"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v16

    goto :goto_1

    .line 296
    .end local v12           #column:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v2, v20

    goto :goto_2
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method
