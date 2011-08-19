.class public Lcom/asus/reader/book/ReaderDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ReaderDatabaseHelper.java"


# static fields
.field private static mInstance:Lcom/asus/reader/book/ReaderDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabaseHelper;->mInstance:Lcom/asus/reader/book/ReaderDatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    const-string v0, "ereader.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 132
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabaseHelper;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method private createReaderTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 470
    const-string v0, "ReaderDatabaseHelper"

    const-string v1, "initial the database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v0, "CREATE TABLE book (_id INTEGER PRIMARY KEY,_id_doc INTEGER,_data TEXT,_display_name TEXT,date_added INTEGER,date_modified INTEGER,mime_type TEXT,rank INTEGER DEFAULT 0,category_id INTEGER DEFAULT 0,date_access INTEGER DEFAULT 0,cover_path TEXT,title TEXT,creator TEXT DEFAULT Anonymous,description TEXT,doc_height INTEGER,doc_width INTEGER,date_create TEXT,local_order INTEGER DEFAULT 0,m_order INTEGER DEFAULT 0,last_viewed_pos DOUBLE,last_viewed_font_size INTEGER DEFAULT 24,doc_lang TEXT,book_source TEXT,volume_id INTEGER DEFAULT 0,error_state INTEGER DEFAULT 0 ,vibe_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    const-string v0, "CREATE TABLE category (_id INTEGER PRIMARY KEY,category_id INTEGER,category_order INTEGER,category_name TEXT,count INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    const-string v0, "INSERT INTO category ( _id,category_id, category_order, category_name, count) VALUES (999,0,0,\'uncategorized\', 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    const-string v0, "INSERT INTO category ( _id,category_id, category_order, category_name, count) VALUES (599,0,0,\'Newspaper\', 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v0, "CREATE TABLE cache (book_id INTEGER,page_no INTEGER,hit_time LONG,width INTEGER,height INTEGER,font_size INTEGER,filename TEXT PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 525
    const-string v0, "CREATE TABLE bookmark ( _id INTEGER PRIMARY KEY,_id_doc INTEGER,start_location TEXT,end_location TEXT,page INTEGER,mark_type INTEGER DEFAULT 0,book_type INTEGER DEFAULT 0,highlight_index INTEGER DEFAULT 0,loc_value REAL DEFAULT 0.0,extension TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    const-string v0, "CREATE TRIGGER update_bookmark_on_delete_book AFTER DELETE ON book BEGIN  DELETE FROM bookmark WHERE _id_doc = OLD._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    const-string v0, "CREATE TABLE bookshelf (_id INTEGER PRIMARY KEY,_count INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 528
    const-string v0, "INSERT INTO bookshelf (_count) VALUES (0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 529
    const-string v0, "ALTER TABLE bookshelf ADD COLUMN filepath TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    const-string v0, "ALTER TABLE bookshelf ADD COLUMN mimetype TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    const-string v0, "CREATE TABLE acsm (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,file_type TEXT,_state INTEGER,_id_doc INTEGER,download_progress INTEGER,book_path TEXT,error_msg TEXT,book_title TEXT,book_format TEXT,book_source TEXT,vibe_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v0, "CREATE TABLE vibe_activities ( _id INTEGER PRIMARY KEY,_spname TEXT,_subcategoryid TEXT,_subcategoryname TEXT,_spcontentid TEXT,_contentname TEXT,_coverpicuri TEXT,_isfree TEXT,_paid TEXT,_tag1 TEXT,_tag2 TEXT,_osset TEXT,_maincategory TEXT,_maincategoryid TEXT,_totalcount TEXT,book_path TEXT,download_url TEXT,purchase_time INTEGER,sync_time INTEGER DEFAULT 0,user_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public static deleteAllBook(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 614
    const-string v1, "book"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "cover_path"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 616
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 617
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    new-instance v2, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, file_doc:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, file_cover:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 623
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .end local v2           #file_doc:Ljava/io/File;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 628
    .end local v1           #file_cover:Ljava/io/File;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 639
    const-string v0, "book"

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 641
    .local p0, rows:I
    return p0
.end method

.method public static deleteBookRegion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "db"
    .parameter "_id"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 646
    const-string v0, "ReaderDatabaseHelper"

    const-string v1, "deleteBookRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v8, -0x1

    .line 649
    .local v8, doc_id:I
    const-string v1, "book"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id_doc"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 652
    .local p1, c_doc:Landroid/database/Cursor;
    if-eqz p1, :cond_7

    .line 653
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 656
    .end local v8           #doc_id:I
    .local v0, doc_id:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move p1, v0

    .line 659
    .end local v0           #doc_id:I
    .local p1, doc_id:I
    :goto_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 660
    const/4 p0, 0x0

    .line 689
    .end local p0
    .end local p1           #doc_id:I
    .end local p2
    :goto_2
    return p0

    .line 662
    .restart local p0
    .restart local p1       #doc_id:I
    .restart local p2
    :cond_0
    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id_doc >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #doc_id:I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 663
    .local v3, where:Ljava/lang/String;
    :goto_3
    const-string v1, "book"

    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "_data"

    aput-object p2, v2, p1

    const/4 p1, 0x1

    const-string p2, "cover_path"

    aput-object p2, v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 666
    .local p1, c:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_5

    .line 667
    :cond_1
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 668
    new-instance v0, Ljava/io/File;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, file_doc:Ljava/io/File;
    const-string p2, "ReaderDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor data need to delete file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance p2, Ljava/io/File;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local p2, file_cover:Ljava/io/File;
    const-string v1, "ReaderDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor data need to delete cover = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 675
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    .end local v0           #file_doc:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 676
    const-string v0, "ReaderDatabaseHelper"

    const-string v1, "have cover & delete it!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    .end local p2           #file_cover:Ljava/io/File;
    if-eqz p2, :cond_4

    .line 678
    const-string p2, "ReaderDatabaseHelper"

    const-string v0, "Cover have deleted!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 662
    .end local v3           #where:Ljava/lang/String;
    .local p1, doc_id:I
    .local p2, selection:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id_doc >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #doc_id:I
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto/16 :goto_3

    .line 681
    .end local p2           #selection:Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .local p1, c:Landroid/database/Cursor;
    :cond_4
    const-string p2, "ReaderDatabaseHelper"

    const-string v0, "Cover deleted failed!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 686
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 688
    const-string p1, "book"

    .end local p1           #c:Landroid/database/Cursor;
    invoke-virtual {p0, p1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 689
    .local p0, rows:I
    goto/16 :goto_2

    .end local v3           #where:Ljava/lang/String;
    .restart local v8       #doc_id:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, c_doc:Landroid/database/Cursor;
    .restart local p2       #selection:Ljava/lang/String;
    :cond_6
    move v0, v8

    .end local v8           #doc_id:I
    .local v0, doc_id:I
    goto/16 :goto_0

    .end local v0           #doc_id:I
    .restart local v8       #doc_id:I
    :cond_7
    move p1, v8

    .end local v8           #doc_id:I
    .local p1, doc_id:I
    goto/16 :goto_1
.end method

.method public static deleteOneBook(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I
    .locals 8
    .parameter "db"
    .parameter "_id"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "context"

    .prologue
    .line 569
    const-string v0, "ReaderDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in deleteOneBook _id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 572
    .local v3, where:Ljava/lang/String;
    :goto_0
    const-string v1, "book"

    const/4 p1, 0x4

    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "_data"

    aput-object p2, v2, p1

    const/4 p1, 0x1

    const-string p2, "cover_path"

    aput-object p2, v2, p1

    const/4 p1, 0x2

    const-string p2, "mime_type"

    aput-object p2, v2, p1

    const/4 p1, 0x3

    const-string p2, "_id_doc"

    aput-object p2, v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 576
    .local p1, c:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 577
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 579
    const-string p2, "ReaderDatabaseHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Ljava/io/File;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, file_doc:Ljava/io/File;
    const-string p2, "ReaderDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor cover = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance p2, Ljava/io/File;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local p2, file_cover:Ljava/io/File;
    const-string v1, "application/pressreader"

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/asus/reader/plugin/PressReader;->deleteOneBook(Ljava/lang/String;Landroid/content/Context;)V

    .line 592
    .end local p4
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 595
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 596
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 600
    .end local v0           #file_doc:Ljava/io/File;
    .end local p2           #file_cover:Ljava/io/File;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 601
    const-string p1, "ReaderDatabaseHelper"

    .end local p1           #c:Landroid/database/Cursor;
    const-string p2, "end of real file!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string p1, "book"

    invoke-virtual {p0, p1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 605
    .local p0, rows:I
    const-string p1, "ReaderDatabaseHelper"

    const-string p2, "end of deleteOneBook"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return p0

    .line 571
    .end local v3           #where:Ljava/lang/String;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, _id:I
    .local p2, selection:Ljava/lang/String;
    .restart local p4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #_id:I
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto/16 :goto_0

    .line 589
    .restart local v0       #file_doc:Ljava/io/File;
    .restart local v3       #where:Ljava/lang/String;
    .local p1, c:Landroid/database/Cursor;
    .local p2, file_cover:Ljava/io/File;
    :cond_3
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    .end local p4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/file/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p4, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/asus/reader/book/ReaderDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    const-class v0, Lcom/asus/reader/book/ReaderDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabaseHelper;->mInstance:Lcom/asus/reader/book/ReaderDatabaseHelper;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/asus/reader/book/ReaderDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/ReaderDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/asus/reader/book/ReaderDatabaseHelper;->mInstance:Lcom/asus/reader/book/ReaderDatabaseHelper;

    .line 139
    :cond_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabaseHelper;->mInstance:Lcom/asus/reader/book/ReaderDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private upgradeDatabaseToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 411
    const-string v0, "CREATE TABLE vibe_activities ( _id INTEGER PRIMARY KEY,_spname TEXT,_subcategoryid TEXT,_subcategoryname TEXT,_spcontentid TEXT,_contentname TEXT,_coverpicuri TEXT,_isfree TEXT,_paid TEXT,_tag1 TEXT,_tag2 TEXT,_osset TEXT,_maincategory TEXT,_maincategoryid TEXT,_totalcount TEXT,book_path TEXT,download_url TEXT,purchase_time INTEGER,sync_time INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method private upgradeDatabaseToVersion11(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 435
    const-string v0, "ALTER TABLE book ADD COLUMN volume_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private upgradeDatabaseToVersion12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 439
    const-string v0, "ALTER TABLE vibe_activities ADD COLUMN user_name TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private upgradeDatabaseToVersion13(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 443
    const-string v0, "ALTER TABLE category ADD COLUMN count INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    const-string v0, "INSERT INTO category ( _id,category_id, category_order, category_name, count) VALUES (999,0,0,\'uncategorized\', 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private upgradeDatabaseToVersion14(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 448
    const-string v1, "UPDATE book SET category_id = 599 WHERE category_id = (SELECT _id FROM category WHERE category_name = \'Newspaper\')"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v1, "category"

    const-string v2, "category_name = \'Newspaper\'"

    invoke-virtual {p1, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/asus/reader/book/ReaderDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, newsCate:Ljava/lang/String;
    const-string v1, "Newspaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE book SET category_id = 599 WHERE category_id = (SELECT _id FROM category WHERE category_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v1, "category"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category_name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    :cond_0
    const-string v1, "INSERT INTO category ( _id,category_id, category_order, category_name, count) VALUES (599,0,0,\'Newspaper\', 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private upgradeDatabaseToVersion15(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 460
    const-string v0, "ALTER TABLE book ADD COLUMN error_state INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private upgradeDatabaseToVersion16(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 464
    const-string v0, "ALTER TABLE book ADD COLUMN vibe_id TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 465
    const-string v0, "ALTER TABLE acsm ADD COLUMN vibe_id TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private upgradeDatabaseToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 368
    const-string v0, "ReaderDatabaseHelper"

    const-string v1, "Create the new table <bookmark>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "CREATE TABLE bookmark ( _id INTEGER PRIMARY KEY,_id_doc INTEGER,start_location TEXT,end_location TEXT,page INTEGER,mark_type INTEGER DEFAULT 0,book_type INTEGER DEFAULT 0,highlight_index INTEGER DEFAULT 0,loc_value REAL DEFAULT 0.0,extension TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v0, "CREATE TRIGGER update_bookmark_on_delete_book AFTER DELETE ON book BEGIN  DELETE FROM bookmark WHERE _id_doc = OLD._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private upgradeDatabaseToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 375
    const-string v0, "ALTER TABLE book ADD COLUMN doc_lang TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private upgradeDatabaseToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 379
    const-string v0, "CREATE TABLE bookshelf (_id INTEGER PRIMARY KEY,_count INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    const-string v0, "INSERT INTO bookshelf (_count) VALUES (0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v0, "ALTER TABLE book ADD COLUMN local_order INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v0, "ALTER TABLE book ADD COLUMN m_order INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private upgradeDatabaseToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 386
    const-string v0, "ALTER TABLE book ADD COLUMN last_viewed_pos DOUBLE"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    const-string v0, "ALTER TABLE book ADD COLUMN last_viewed_font_size INTEGER DEFAULT 24"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v0, "ALTER TABLE bookshelf ADD COLUMN filepath TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    const-string v0, "ALTER TABLE bookshelf ADD COLUMN mimetype TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private upgradeDatabaseToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 393
    const-string v0, "CREATE TABLE acsm (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,file_type TEXT,_state INTEGER,_id_doc INTEGER,download_progress INTEGER,book_path TEXT,error_msg TEXT,book_title TEXT,book_format TEXT,book_source TEXT,vibe_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private upgradeDatabaseToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 397
    const-string v0, "ALTER TABLE book ADD COLUMN book_source TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private upgradeDatabaseToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 401
    const-string v0, "ALTER TABLE acsm ADD COLUMN book_source TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private upgradeDatabaseToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 406
    const-string v0, "DROP TRIGGER IF EXISTS update_bookmark_on_delete_book"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "CREATE TRIGGER update_bookmark_on_delete_book AFTER DELETE ON book BEGIN  DELETE FROM bookmark WHERE _id_doc = OLD._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->createReaderTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_0

    .line 355
    :goto_0
    const-string v1, "ReaderDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v1, "DROP TABLE IF EXISTS book"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v1, "DROP TABLE IF EXISTS category"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const-string v1, "DROP TABLE IF EXISTS bookmark"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    const-string v1, "DROP TABLE IF EXISTS bookshelf"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string v1, "DROP TABLE IF EXISTS acsm"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    const-string v1, "DROP TABLE IF EXISTS vibe_activities"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_0
    :goto_1
    return-void

    .line 156
    :pswitch_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    :pswitch_1
    const/4 v1, 0x2

    if-le p3, v1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 173
    :try_start_1
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    :pswitch_2
    const/4 v1, 0x3

    if-le p3, v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 186
    :try_start_2
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    :pswitch_3
    const/4 v1, 0x4

    if-le p3, v1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 199
    :try_start_3
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    :pswitch_4
    const/4 v1, 0x5

    if-le p3, v1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    :try_start_4
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 218
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    :pswitch_5
    const/4 v1, 0x6

    if-le p3, v1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    :try_start_5
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 231
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :pswitch_6
    const/4 v1, 0x7

    if-le p3, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 238
    :try_start_6
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    :pswitch_7
    const/16 v1, 0x8

    if-le p3, v1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    :try_start_7
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 257
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    :pswitch_8
    const/16 v1, 0x9

    if-le p3, v1, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    :try_start_8
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 273
    :pswitch_9
    const/16 v1, 0xa

    if-le p3, v1, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 277
    :try_start_9
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion11(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 278
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    :pswitch_a
    const/16 v1, 0xb

    if-le p3, v1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 290
    :try_start_a
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion12(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 299
    :pswitch_b
    const/16 v1, 0xc

    if-le p3, v1, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 303
    :try_start_b
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion13(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 309
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 312
    :pswitch_c
    const/16 v1, 0xd

    if-le p3, v1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 316
    :try_start_c
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion14(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 317
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 322
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 325
    :pswitch_d
    const/16 v1, 0xe

    if-le p3, v1, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 329
    :try_start_d
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion15(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    :pswitch_e
    const/16 v1, 0xf

    if-le p3, v1, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    :try_start_e
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabaseHelper;->upgradeDatabaseToVersion16(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 343
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 162
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, e:Ljava/lang/Throwable;
    :try_start_f
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 175
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 176
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_10
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 188
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 189
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_11
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 192
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 201
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 202
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_12
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 214
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 215
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_13
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 218
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 227
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 228
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_14
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 231
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 240
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 241
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_6
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 253
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 254
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 257
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_7
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 266
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 267
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_8
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 279
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 280
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_18
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_9
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 292
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 293
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_a
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 305
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 306
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_1a
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 309
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_b
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 318
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 319
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_1b
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 322
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_c
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 331
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 332
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_1c
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_d
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 344
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 345
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_1d
    const-string v1, "ReaderDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
