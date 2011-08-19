.class Lcom/google/android/partnersetup/RlzPingService$1;
.super Ljava/lang/Thread;
.source "RlzPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzPingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzPingService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzPingService;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    iput-object p2, p0, Lcom/google/android/partnersetup/RlzPingService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/partnersetup/RlzPingService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 343
    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "events._id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "ap"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "event_type"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "current_rlz"

    aput-object v6, v7, v5

    .line 349
    .local v7, projection:[Ljava/lang/String;
    const/16 v27, -0x1

    .line 350
    .local v27, numEventsProcessed:I
    sget-object v5, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "/pending"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 352
    .local v6, pending:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 353
    .local v20, cur:Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 355
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 356
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v30, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "app_name"

    .end local v6           #pending:Landroid/net/Uri;
    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "current_rlz"

    aput-object v6, v10, v5

    .line 361
    .local v10, rlzProj:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 362
    .end local v7           #projection:[Ljava/lang/String;
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    new-instance v5, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 366
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$300(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$400(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$500(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/partnersetup/RlzPingService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v30

    invoke-static/range {v11 .. v16}, Lcom/google/android/partnersetup/RlzPingService;->buildPing(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 369
    .local v28, ping:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/partnersetup/RlzPingService;->access$600(Lcom/google/android/partnersetup/RlzPingService;Landroid/net/Uri;)I

    move-result v27

    .line 433
    .end local v10           #rlzProj:[Ljava/lang/String;
    .end local v28           #ping:Landroid/net/Uri;
    .end local v30           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->val$intent:Landroid/content/Intent;

    move-object v5, v0

    const-string v6, "com.google.android.partnersetup.intents.EXTRA_TESTING"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.partnersetup.intents.ACTION_SERVICE_FINISHED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/partnersetup/RlzPingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 436
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->val$startId:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/partnersetup/RlzPingService;->stopSelf(I)V

    .line 437
    return-void

    .line 428
    .restart local v6       #pending:Landroid/net/Uri;
    .restart local v7       #projection:[Ljava/lang/String;
    .local v11, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local v12, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .local v22, eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v23, eventsToClear:Ljava/lang/StringBuilder;
    .local v26, isFirst:Z
    .restart local v28       #ping:Landroid/net/Uri;
    .local v31, values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v6

    move-object v15, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 371
    .end local v11           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .end local v12           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .end local v22           #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #eventsToClear:Ljava/lang/StringBuilder;
    .end local v26           #isFirst:Z
    .end local v28           #ping:Landroid/net/Uri;
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 373
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .restart local v11       #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .restart local v12       #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .restart local v23       #eventsToClear:Ljava/lang/StringBuilder;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .restart local v22       #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x1

    .line 380
    .restart local v26       #isFirst:Z
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 381
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 382
    .local v24, id:J
    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 383
    .local v19, ap:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 384
    .local v21, et:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 385
    .local v29, rlz:Ljava/lang/String;
    if-nez v29, :cond_4

    .line 386
    const-string v29, ""

    .line 388
    :cond_4
    new-instance v5, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v5, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    if-nez v26, :cond_5

    .line 391
    const-string v5, " OR "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5
    const-string v5, "_id"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v5, "=?"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    const/16 v26, 0x0

    .line 397
    goto :goto_2

    .line 398
    .end local v19           #ap:Ljava/lang/String;
    .end local v21           #et:Ljava/lang/String;
    .end local v24           #id:J
    .end local v29           #rlz:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->deactivate()V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$300(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$400(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$500(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/partnersetup/RlzPingService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Lcom/google/android/partnersetup/RlzPingService;->buildPing(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 402
    .restart local v28       #ping:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/partnersetup/RlzPingService;->access$600(Lcom/google/android/partnersetup/RlzPingService;Landroid/net/Uri;)I

    move-result v27

    .line 409
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .restart local v31       #values:Landroid/content/ContentValues;
    const-string v5, "status"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v31

    move-object v3, v10

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 416
    if-gez v27, :cond_8

    .line 431
    .end local v11           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .end local v12           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .end local v22           #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #eventsToClear:Ljava/lang/StringBuilder;
    .end local v26           #isFirst:Z
    .end local v28           #ping:Landroid/net/Uri;
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 424
    .restart local v11       #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .restart local v12       #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .restart local v22       #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23       #eventsToClear:Ljava/lang/StringBuilder;
    .restart local v26       #isFirst:Z
    .restart local v28       #ping:Landroid/net/Uri;
    .restart local v31       #values:Landroid/content/ContentValues;
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v27

    move v1, v5

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    move-object v0, v5

    move/from16 v1, v27

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/partnersetup/RlzPingService;->access$700(Landroid/content/ContentResolver;II)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3
.end method
