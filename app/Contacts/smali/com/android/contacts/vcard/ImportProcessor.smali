.class public Lcom/android/contacts/vcard/ImportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ImportProcessor.java"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotifier:Lcom/android/contacts/vcard/ImportProgressNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;

.field private mVCardParser:Lcom/android/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 3
    .parameter "service"
    .parameter "request"
    .parameter "jobId"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 77
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 78
    iput p3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .line 79
    new-instance v0, Lcom/android/contacts/vcard/ImportProgressNotifier;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p2, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/android/contacts/vcard/ImportProgressNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotifier:Lcom/android/contacts/vcard/ImportProgressNotifier;

    .line 81
    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v3, 0x7f0c00c6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget-object v6, v6, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/VCardService;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 183
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 184
    return-void
.end method

.method private doFinishNotification(Landroid/net/Uri;)V
    .locals 11
    .parameter "createdUri"

    .prologue
    .line 187
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v7, 0x7f0c00c5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget-object v10, v10, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, description:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 191
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 192
    .local v4, rawContactId:J
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v4           #rawContactId:J
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7, v2}, Lcom/android/contacts/vcard/VCardService;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v3

    .line 202
    .local v3, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 203
    return-void

    .line 197
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notification:Landroid/app/Notification;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private readOneVCard(Landroid/net/Uri;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 10
    .parameter "uri"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "possibleVCardVersions"

    .prologue
    .line 208
    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start importing one vCard (Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, successful:Z
    array-length v4, p5

    .line 211
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, is:Ljava/io/InputStream;
    aget v6, p5, v2

    .line 215
    .local v6, vcardVersion:I
    if-lez v2, :cond_0

    :try_start_0
    instance-of v7, p4, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v7, :cond_0

    .line 217
    move-object v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 220
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 226
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7

    .line 227
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :try_start_1
    new-instance v7, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v7, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    :goto_1
    iput-object v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    const-string v7, "VCardImport"

    const-string v8, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-interface {v7}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 235
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    iget-object v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-interface {v7, v3, p4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_7

    .line 238
    const/4 v5, 0x1

    .line 262
    if-eqz v3, :cond_2

    .line 264
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 271
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #vcardVersion:I
    :cond_2
    :goto_2
    return v5

    .line 227
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #vcardVersion:I
    :cond_3
    :try_start_4
    new-instance v7, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v7, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_7

    .line 240
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 241
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException was emitted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    if-eqz v3, :cond_4

    .line 264
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 211
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 250
    .local v1, e:Lcom/android/vcard/exception/VCardNestedException;
    :try_start_8
    const-string v7, "VCardImport"

    const-string v8, "Nested Exception is found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 262
    if-eqz v3, :cond_4

    .line 264
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 265
    :catch_2
    move-exception v7

    goto :goto_3

    .line 251
    .end local v1           #e:Lcom/android/vcard/exception/VCardNestedException;
    :catch_3
    move-exception v7

    move-object v1, v7

    .line 252
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :try_start_a
    const-string v7, "VCardImport"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 262
    if-eqz v3, :cond_4

    .line 264
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 265
    :catch_4
    move-exception v7

    goto :goto_3

    .line 253
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v7

    move-object v1, v7

    .line 254
    .local v1, e:Lcom/android/vcard/exception/VCardVersionException;
    const/4 v7, 0x1

    sub-int v7, v4, v7

    if-ne v2, v7, :cond_5

    .line 255
    :try_start_c
    const-string v7, "VCardImport"

    const-string v8, "Appropriate version for this vCard is not found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 262
    :cond_5
    if-eqz v3, :cond_4

    .line 264
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_3

    .line 265
    :catch_6
    move-exception v7

    goto :goto_3

    .line 259
    .end local v1           #e:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v7

    move-object v1, v7

    .line 260
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    :try_start_e
    const-string v7, "VCardImport"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 262
    if-eqz v3, :cond_4

    .line 264
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_3

    .line 265
    :catch_8
    move-exception v7

    goto :goto_3

    .line 262
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    :catchall_1
    move-exception v7

    if-eqz v3, :cond_6

    .line 264
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 266
    :cond_6
    :goto_4
    throw v7

    .line 265
    :catch_9
    move-exception v7

    goto/16 :goto_2

    .local v1, e:Ljava/io/IOException;
    :catch_a
    move-exception v7

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catch_b
    move-exception v8

    goto :goto_4
.end method

.method private runInternal()V
    .locals 12

    .prologue
    .line 111
    const-string v0, "VCardImport"

    const-string v1, "vCard import (id: %d) has started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v9, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 113
    .local v9, request:Lcom/android/contacts/vcard/ImportRequest;
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled before actually handling parameter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v0, v9, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 133
    .local v5, possibleVCardVersions:[I
    :goto_1
    iget-object v1, v9, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 134
    .local v1, uri:Landroid/net/Uri;
    iget-object v6, v9, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 135
    .local v6, account:Landroid/accounts/Account;
    iget v2, v9, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 136
    .local v2, estimatedVCardType:I
    iget-object v3, v9, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 137
    .local v3, estimatedCharset:Ljava/lang/String;
    iget v8, v9, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 138
    .local v8, entryCount:I
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotifier:Lcom/android/contacts/vcard/ImportProgressNotifier;

    invoke-virtual {v0, v8}, Lcom/android/contacts/vcard/ImportProgressNotifier;->addTotalCount(I)V

    .line 140
    new-instance v4, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v4, v2, v6, v3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 142
    .local v4, constructor:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v7, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v7, v0}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 143
    .local v7, committer:Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v4, v7}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 144
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mNotifier:Lcom/android/contacts/vcard/ImportProgressNotifier;

    invoke-virtual {v4, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    move-object v0, p0

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/vcard/ImportProcessor;->readOneVCard(Landroid/net/Uri;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z

    move-result v10

    .line 150
    .local v10, successful:Z
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .end local v2           #estimatedVCardType:I
    invoke-virtual {v0, v2, v10}, Lcom/android/contacts/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 152
    if-eqz v10, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "VCardImport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vCard import has been canceled (uri: "

    .end local v3           #estimatedCharset:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v4           #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .end local v5           #possibleVCardVersions:[I
    .end local v6           #account:Landroid/accounts/Account;
    .end local v7           #committer:Lcom/android/vcard/VCardEntryCommitter;
    .end local v8           #entryCount:I
    .end local v10           #successful:Z
    :cond_1
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    iget v1, v9, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    aput v1, v5, v0

    .restart local v5       #possibleVCardVersions:[I
    goto :goto_1

    .line 159
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #estimatedCharset:Ljava/lang/String;
    .restart local v4       #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .restart local v6       #account:Landroid/accounts/Account;
    .restart local v7       #committer:Lcom/android/vcard/VCardEntryCommitter;
    .restart local v8       #entryCount:I
    .restart local v10       #successful:Z
    :cond_2
    const-string v0, "VCardImport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully finished importing one vCard file: "

    .end local v3           #estimatedCharset:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v7}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v11

    .line 161
    .local v11, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 163
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportProcessor;->doFinishNotification(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 166
    :cond_3
    const-string v0, "VCardImport"

    const-string v1, "Created Uris is null or 0 length though the creation itself is successful."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportProcessor;->doFinishNotification(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 173
    .end local v11           #uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #estimatedCharset:Ljava/lang/String;
    :cond_4
    const-string v0, "VCardImport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read one vCard file: "

    .end local v3           #estimatedCharset:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 123
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 3
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v2, 0x1

    .line 276
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardImport"

    const-string v1, "ImportProcessor received cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    monitor-exit p0

    return v0

    .line 280
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    .line 281
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-interface {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 285
    :cond_2
    monitor-exit p0

    move v0, v2

    .line 286
    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->runInternal()V

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->doCancelNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :cond_0
    monitor-enter p0

    .line 105
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 106
    monitor-exit p0

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardImport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 105
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 106
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 100
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "RuntimeException thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
