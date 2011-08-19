.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "sourceUris"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 237
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 239
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 242
    return-void
.end method

.method private constructImportRequest(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 23
    .parameter "localDataUri"
    .parameter "originalUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 400
    .local v21, resolver:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 401
    .local v11, counter:Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 402
    .local v13, detector:Lcom/android/vcard/VCardSourceDetector;
    const/16 v18, 0x0

    .line 403
    .local v18, interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    const/4 v9, 0x1

    .line 405
    .local v9, vcardVersion:I
    const/16 v22, 0x0

    .line 406
    .local v22, shouldUseV30:Z
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 407
    .local v20, is:Ljava/io/InputStream;
    new-instance v3, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v3}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 409
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v12, counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_b

    .line 411
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .local v14, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    new-instance v19, Lcom/android/vcard/VCardInterpreterCollection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/vcard/VCardInterpreter;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardInterpreterCollection;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_c

    .line 413
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .local v19, interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_4 .. :try_end_4} :catch_d

    .line 433
    if-eqz v20, :cond_3

    .line 435
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 441
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :cond_0
    :goto_0
    if-eqz v22, :cond_2

    const/4 v3, 0x2

    move v9, v3

    .line 447
    .end local v20           #is:Ljava/io/InputStream;
    :goto_1
    new-instance v3, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Landroid/accounts/Account;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;II)V

    return-object v3

    .line 436
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v20       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 437
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_0

    .line 414
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v19, v18

    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 416
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v16, e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_2
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 420
    :goto_3
    const/16 v22, 0x1

    .line 421
    :try_start_7
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 422
    new-instance v3, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v3}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 424
    :try_start_8
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_3

    .line 425
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_9
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_8

    .line 426
    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_a
    new-instance v18, Lcom/android/vcard/VCardInterpreterCollection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/vcard/VCardInterpreter;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardInterpreterCollection;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_9

    .line 428
    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_a

    .line 433
    if-eqz v20, :cond_0

    .line 435
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_0

    .line 436
    :catch_2
    move-exception v3

    goto :goto_0

    .line 429
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_3
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 430
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v17, e2:Lcom/android/vcard/exception/VCardVersionException;
    :goto_4
    :try_start_d
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "vCard with unspported version."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 433
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v17           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v20, :cond_1

    .line 435
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_e .. :try_end_e} :catch_4

    .line 437
    :cond_1
    :goto_6
    :try_start_f
    throw v3
    :try_end_f
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_4

    .line 442
    .end local v20           #is:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v15, v3

    .line 443
    .local v15, e:Lcom/android/vcard/exception/VCardNestedException;
    :goto_7
    const-string v3, "VCardImport"

    const-string v4, "Nested Exception is found (it may be false-positive)."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 441
    .end local v15           #e:Lcom/android/vcard/exception/VCardNestedException;
    .restart local v20       #is:Ljava/io/InputStream;
    :cond_2
    const/4 v3, 0x1

    move v9, v3

    goto/16 :goto_1

    .line 417
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_5
    move-exception v3

    goto :goto_3

    .line 436
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_6
    move-exception v4

    goto :goto_6

    .line 442
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_7
    move-exception v3

    move-object v15, v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .line 433
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catchall_2
    move-exception v3

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catchall_3
    move-exception v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catchall_4
    move-exception v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_5

    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catchall_5
    move-exception v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    goto :goto_5

    .line 429
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_8
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_4

    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_9
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    goto :goto_4

    :catch_a
    move-exception v3

    move-object/from16 v17, v3

    goto :goto_4

    .line 414
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    :catch_b
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v19, v18

    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_2

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    :catch_c
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v19, v18

    .end local v18           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v19       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    goto/16 :goto_2

    :catch_d
    move-exception v3

    move-object/from16 v16, v3

    goto/16 :goto_2

    :cond_3
    move-object/from16 v18, v19

    .end local v19           #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    .restart local v18       #interpreter:Lcom/android/vcard/VCardInterpreterCollection;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_0
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "sourceUri"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 342
    const-string v7, "VCardImport"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 345
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 346
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 347
    .local v4, inputChannel:Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 348
    .local v5, outputChannel:Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 350
    .local v2, destUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 351
    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 352
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 353
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 355
    iget-boolean v7, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 356
    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    const/4 v7, 0x0

    .line 368
    if-eqz v4, :cond_0

    .line 370
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 377
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :cond_1
    :goto_2
    return-object v7

    .line 371
    :catch_0
    move-exception v3

    .line 372
    .local v3, e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 379
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 359
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 360
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 361
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 368
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 370
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 375
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 377
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 380
    :cond_4
    :goto_4
    throw v7

    .line 363
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 364
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 365
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 368
    :cond_6
    if-eqz v4, :cond_7

    .line 370
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 375
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 377
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    :goto_7
    move-object v7, v2

    .line 383
    goto :goto_2

    .line 371
    :catch_2
    move-exception v3

    .line 372
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 378
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 379
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 371
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 372
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 378
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 379
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 460
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-interface {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 463
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 250
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 467
    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 469
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 254
    const-string v14, "VCardImport"

    const-string v15, "vCard cache thread starts running."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v14

    if-nez v14, :cond_0

    .line 256
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 263
    const-string v14, "VCardImport"

    const-string v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 267
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v5, v0

    .line 276
    .local v5, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 277
    .local v4, cache_index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    move-object v3, v0

    .local v3, arr$:[Landroid/net/Uri;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v13, v3, v9

    .line 278
    .local v13, sourceUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 281
    .local v8, filename:Ljava/lang/String;
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "import_tmp_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".vcf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    invoke-virtual {v5, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 283
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 292
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 293
    .local v11, localDataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v14, v0

    if-eqz v14, :cond_5

    .line 294
    const-string v14, "VCardImport"

    const-string v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filename:Ljava/lang/String;
    .end local v11           #localDataUri:Landroid/net/Uri;
    .end local v13           #sourceUri:Landroid/net/Uri;
    :cond_2
    :goto_3
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 286
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v13       #sourceUri:Landroid/net/Uri;
    :cond_3
    const v14, 0x7fffffff

    if-ne v4, v14, :cond_4

    .line 287
    :try_start_2
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Exceeded cache limit"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    .end local v3           #arr$:[Landroid/net/Uri;
    .end local v4           #cache_index:I
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filename:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #sourceUri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 320
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v14, "VCardImport"

    const-string v15, "OutOfMemoryError occured during caching vCard"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    new-instance v15, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c00b6

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 289
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #arr$:[Landroid/net/Uri;
    .restart local v4       #cache_index:I
    .restart local v5       #context:Landroid/content/Context;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #sourceUri:Landroid/net/Uri;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 291
    goto/16 :goto_2

    .line 297
    .restart local v11       #localDataUri:Landroid/net/Uri;
    :cond_5
    if-nez v11, :cond_6

    .line 298
    :try_start_4
    const-string v14, "VCardImport"

    const-string v15, "destUri is null"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 324
    .end local v3           #arr$:[Landroid/net/Uri;
    .end local v4           #cache_index:I
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filename:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #localDataUri:Landroid/net/Uri;
    .end local v13           #sourceUri:Landroid/net/Uri;
    :catch_1
    move-exception v14

    move-object v6, v14

    .line 325
    .local v6, e:Ljava/io/IOException;
    :try_start_5
    const-string v14, "VCardImport"

    const-string v15, "IOException during caching vCard"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    new-instance v15, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c00b5

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 303
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #arr$:[Landroid/net/Uri;
    .restart local v4       #cache_index:I
    .restart local v5       #context:Landroid/content/Context;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #localDataUri:Landroid/net/Uri;
    .restart local v13       #sourceUri:Landroid/net/Uri;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/vcard/ImportRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v12

    .line 313
    .local v12, parameter:Lcom/android/contacts/vcard/ImportRequest;
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v14, v0

    if-eqz v14, :cond_7

    .line 314
    const-string v14, "VCardImport"

    const-string v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 304
    .end local v12           #parameter:Lcom/android/contacts/vcard/ImportRequest;
    :catch_2
    move-exception v6

    .line 305
    .local v6, e:Lcom/android/vcard/exception/VCardException;
    :try_start_8
    const-string v14, "VCardImport"

    const-string v15, "Maybe the file is in wrong format"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const v15, 0x7f0c00b8

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 308
    .end local v6           #e:Lcom/android/vcard/exception/VCardException;
    :catch_3
    move-exception v6

    .line 309
    .local v6, e:Ljava/io/IOException;
    :try_start_9
    const-string v14, "VCardImport"

    const-string v15, "Unexpected IOException"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const v15, 0x7f0c00b5

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 329
    const-string v14, "VCardImport"

    const-string v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 317
    .end local v6           #e:Ljava/io/IOException;
    .restart local v12       #parameter:Lcom/android/contacts/vcard/ImportRequest;
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Lcom/android/contacts/vcard/ImportRequest;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 329
    .end local v3           #arr$:[Landroid/net/Uri;
    .end local v4           #cache_index:I
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filename:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #localDataUri:Landroid/net/Uri;
    .end local v12           #parameter:Lcom/android/contacts/vcard/ImportRequest;
    .end local v13           #sourceUri:Landroid/net/Uri;
    :catchall_0
    move-exception v14

    const-string v15, "VCardImport"

    const-string v16, "Finished caching vCard."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    throw v14
.end method
