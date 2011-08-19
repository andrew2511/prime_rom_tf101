.class Lcom/ecareme/pixwe/media/HudLayer$56$2;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

.field private final synthetic val$editAlbumName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer$56;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->val$editAlbumName:Landroid/widget/EditText;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->val$editAlbumName:Landroid/widget/EditText;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1392
    .local v14, newAlbumName:Ljava/lang/String;
    const-string v2, "[%#/:\\x2a\\x3f\\<>|\'\\s\"]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 1393
    .local v15, p:Ljava/util/regex/Pattern;
    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1394
    .local v12, m:Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1395
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1396
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1398
    const v2, 0x7f060056

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1399
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 1451
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1404
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 1406
    .local v1, mProviderClient:Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder!="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1407
    .local v8, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1408
    .local v11, found:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1410
    :cond_1
    const-string v2, "album_folder"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1411
    .local v13, name:Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1412
    const/4 v11, 0x1

    .line 1417
    .end local v13           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1418
    if-nez v11, :cond_5

    .line 1419
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v5, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1420
    sget-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iput-object v14, v2, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 1421
    sget-object v2, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 1422
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1423
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v2, "album_folder"

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    const-string v2, "album_folder_dispaly"

    invoke-virtual {v9, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v2, "share_status"

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-boolean v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->isShared:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1426
    const-string v2, "file_sort"

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mSort:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1429
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "album_folder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v4, v4, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1430
    .local v16, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v2, v3, v4}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 1436
    .end local v16           #result:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v11           #found:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    goto/16 :goto_0

    .line 1415
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v11       #found:Z
    .restart local v13       #name:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1409
    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 1438
    .end local v13           #name:Ljava/lang/String;
    :cond_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1439
    .restart local v7       #builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/HudLayer$56$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$56;

    move-object v2, v0

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer$56;->access$0(Lcom/ecareme/pixwe/media/HudLayer$56;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1441
    const v2, 0x7f060057

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1442
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1446
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #found:Z
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 1448
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
