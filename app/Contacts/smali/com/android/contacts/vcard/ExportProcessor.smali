.class public Lcom/android/contacts/vcard/ExportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V
    .locals 2
    .parameter "service"
    .parameter "exportRequest"
    .parameter "jobId"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 57
    invoke-virtual {p1}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 60
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    .line 61
    iput p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    .line 62
    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 226
    const-string v2, "VCardExport"

    const-string v3, "send cancel notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v3, 0x7f0c00d6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/VCardService;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 231
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 232
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 235
    const-string v0, "VCardExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send finish notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-class v2, Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/vcard/VCardService;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "totalCount"
    .parameter "currentCount"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0c00d8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0c00d7

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/VCardService;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 222
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 223
    return-void
.end method

.method private runInternal()V
    .locals 24

    .prologue
    .line 92
    const-string v19, "VCardExport"

    const-string v20, "vCard export (id: %d) has started."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    move-object v12, v0

    .line 94
    .local v12, request:Lcom/android/contacts/vcard/ExportRequest;
    const/4 v4, 0x0

    .line 95
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    const/4 v13, 0x0

    .line 97
    .local v13, successful:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 98
    const-string v19, "VCardExport"

    const-string v20, "Export request is cancelled before handling the request"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v4, :cond_0

    .line 193
    throw v4

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 198
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_1
    move-object v0, v12

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .local v17, uri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 116
    .local v11, outputStream:Ljava/io/OutputStream;
    :try_start_3
    iget-object v9, v12, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 118
    .local v9, exportType:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c0001

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v18

    .line 125
    .local v18, vcardType:I
    :goto_1
    new-instance v5, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .local v5, composer:Lcom/android/vcard/VCardComposer;
    :try_start_4
    new-instance v19, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;-><init>(Lcom/android/vcard/VCardComposer;Ljava/io/OutputStream;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardComposer;->addHandler(Lcom/android/vcard/VCardComposer$OneEntryHandler;)V

    .line 134
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->init()Z

    move-result v19

    if-nez v19, :cond_5

    .line 135
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, errorReason:Ljava/lang/String;
    const-string v19, "VCardExport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "initialization of vCard composer failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 139
    .local v16, translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c00d9

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, title:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    if-eqz v5, :cond_2

    .line 193
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_0

    .line 105
    .end local v8           #errorReason:Ljava/lang/String;
    .end local v9           #exportType:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v14           #title:Ljava/lang/String;
    .end local v16           #translatedErrorReason:Ljava/lang/String;
    .end local v18           #vcardType:I
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 106
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v19, "VCardExport"

    const-string v20, "FileNotFoundException thrown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c00de

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .restart local v8       #errorReason:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v4, :cond_3

    .line 193
    throw v4

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_0

    .line 122
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .end local v8           #errorReason:Ljava/lang/String;
    .restart local v9       #exportType:Ljava/lang/String;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    :cond_4
    :try_start_6
    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v18

    .restart local v18       #vcardType:I
    goto/16 :goto_1

    .line 146
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    :cond_5
    :try_start_7
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v15

    .line 147
    .local v15, total:I
    if-nez v15, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c00d2

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    .restart local v14       #title:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 192
    if-eqz v5, :cond_6

    .line 193
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_0

    .line 154
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v14           #title:Ljava/lang/String;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    :cond_7
    const/4 v6, 0x1

    .line 155
    .local v6, current:I
    :goto_2
    :try_start_8
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_d

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 157
    const-string v19, "VCardExport"

    const-string v20, "Export request is cancelled during composing vCard"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 192
    if-eqz v5, :cond_8

    .line 193
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_0

    .line 160
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    :cond_9
    :try_start_9
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->createOneEntry()Z

    move-result v19

    if-nez v19, :cond_b

    .line 161
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v8

    .line 162
    .restart local v8       #errorReason:Ljava/lang/String;
    const-string v19, "VCardExport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to read a contact: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 165
    .restart local v16       #translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c00da

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .restart local v14       #title:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 192
    if-eqz v5, :cond_a

    .line 193
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_0

    .line 174
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #errorReason:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    .end local v16           #translatedErrorReason:Ljava/lang/String;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    :cond_b
    :try_start_a
    rem-int/lit8 v19, v6, 0x64

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 177
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 179
    :cond_d
    const-string v19, "VCardExport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Successfully finished exporting vCard "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v12

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v19, "VCardExport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ask MediaScanner to scan the file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v12

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 186
    const/4 v13, 0x1

    .line 187
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    const v20, 0x7f0c00d5

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .restart local v14       #title:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 192
    if-eqz v5, :cond_e

    .line 193
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v5

    .line 198
    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_0

    .line 192
    .end local v6           #current:I
    .end local v9           #exportType:Ljava/lang/String;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #total:I
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #vcardType:I
    :catchall_0
    move-exception v19

    :goto_3
    if-eqz v4, :cond_f

    .line 193
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 196
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    throw v19

    .line 192
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v9       #exportType:Ljava/lang/String;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #vcardType:I
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_3
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 204
    :cond_0
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 206
    :cond_1
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 3
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v2, 0x1

    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardExport"

    const-string v1, "received cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    monitor-exit p0

    return v0

    .line 248
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 249
    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
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
    .line 259
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z
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
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->runInternal()V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :cond_0
    monitor-enter p0

    .line 86
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 87
    monitor-exit p0

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 86
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 87
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 81
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
