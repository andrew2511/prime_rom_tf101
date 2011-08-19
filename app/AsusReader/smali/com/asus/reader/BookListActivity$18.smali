.class Lcom/asus/reader/BookListActivity$18;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->handleDeleteBooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2725
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2728
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "cover_path"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "_id_doc"

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "mime_type"

    aput-object v1, v6, v0

    .line 2735
    .local v6, SELECTED_COLUMNS:[Ljava/lang/String;
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-direct {v8, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2736
    .local v8, deleteCursor:Landroid/database/MatrixCursor;
    const/4 v11, 0x0

    .line 2737
    .local v11, refreshlastread:Z
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_2

    .line 2738
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/asus/reader/ui/BookGrid;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2737
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 2741
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 2742
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2744
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2745
    .local v10, id:Ljava/lang/Long;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3700(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2746
    const/4 v11, 0x1

    .line 2747
    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2748
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "filepath"

    const-string v1, ""

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    const-string v0, "mimetype"

    const-string v1, ""

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2753
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_path"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id_doc"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2762
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2763
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2764
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->close()V

    .line 2791
    :cond_3
    :goto_2
    return-void

    .line 2767
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f5

    invoke-virtual {v8}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2771
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 2773
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 2774
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2775
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2776
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->close()V

    .line 2777
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2778
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2780
    if-eqz v11, :cond_3

    .line 2781
    const-string v5, "date_access DESC"

    .line 2782
    .local v5, sort:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(date_access > 0 ) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2783
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2788
    .restart local v7       #c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$18;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d1

    invoke-virtual {v1, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
