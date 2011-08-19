.class public Lcom/android/emailcommon/utility/AttachmentUtilities;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/AttachmentUtilities$Columns;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const-string v0, "content://com.android.email.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    .line 65
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 89
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 96
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ade"

    aput-object v1, v0, v3

    const-string v1, "adp"

    aput-object v1, v0, v4

    const-string v1, "bat"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cpl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dll"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hta"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ins"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jse"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lib"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mde"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "msc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mst"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pif"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "scr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "shb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sys"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vbe"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "vbs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "vxd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "wsc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "wsf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "wsh"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "zip"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "tar"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "tgz"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "bz2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    .line 110
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 364
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 365
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 372
    :cond_0
    return-void

    .line 366
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 367
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 368
    .local v5, result:Z
    if-nez v5, :cond_2

    .line 369
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete attachment file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 318
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 319
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 322
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 324
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 328
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 333
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 350
    .local v7, messageId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 353
    .end local v7           #messageId:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    return-void
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJII)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "id"

    .prologue
    .line 129
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, extension:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 274
    .local v1, lastDot:I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 275
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 278
    .end local v1           #lastDot:I
    :cond_0
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, resultType:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, fileExtension:Ljava/lang/String;
    const-string v5, "text/plain"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 202
    .local v2, isTextPlain:Z
    const-string v5, "eml"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    const-string v3, "message/rfc822"

    .line 242
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    if-eqz v2, :cond_a

    const-string v5, "text/plain"

    move-object v3, v5

    .line 245
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 205
    :cond_2
    if-nez v2, :cond_3

    const-string v5, "application/octet-stream"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    const/4 v5, 0x1

    move v1, v5

    .line 208
    .local v1, isGenericType:Z
    :goto_2
    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 209
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    if-eqz v2, :cond_7

    move-object v3, p1

    :goto_3
    goto :goto_0

    .line 205
    .end local v1           #isGenericType:Z
    :cond_6
    const/4 v5, 0x0

    move v1, v5

    goto :goto_2

    .line 221
    .restart local v1       #isGenericType:Z
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "application/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_3

    .line 231
    :cond_8
    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, type:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 233
    move-object v3, v4

    goto :goto_0

    .line 235
    :cond_9
    move-object v3, p1

    goto :goto_0

    .line 243
    .end local v1           #isGenericType:Z
    .end local v4           #type:Ljava/lang/String;
    :cond_a
    const-string v5, "application/octet-stream"

    move-object v3, v5

    goto :goto_1
.end method

.method public static inferMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 258
    :cond_0
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 261
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter "resolver"
    .parameter "attachmentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 297
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, strUri:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 300
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v7           #strUri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 304
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p1

    .line 307
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
