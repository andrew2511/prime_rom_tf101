.class final Lcom/asus/reader/book/ReaderDatabase$DbHandler;
.super Landroid/os/Handler;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/ReaderDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ReaderDatabase;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/ReaderDatabase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    .line 1919
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1920
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 1924
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/16 v5, 0x66

    if-ne v4, v5, :cond_4

    .line 1925
    :cond_0
    const-string v4, "ReaderDatabase"

    const-string v5, "===Handler QUERY_DB==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$600(Lcom/asus/reader/book/ReaderDatabase;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    .line 1928
    const-string v4, "ReaderDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======= The whereColumeID ======="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    iget-object v4, v4, Lcom/asus/reader/book/ReaderDatabase;->mMountListener:Lcom/asus/reader/book/ReaderDatabase$mountListener;

    if-eqz v4, :cond_1

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    iget-object v4, v4, Lcom/asus/reader/book/ReaderDatabase;->mMountListener:Lcom/asus/reader/book/ReaderDatabase$mountListener;

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/asus/reader/book/ReaderDatabase$mountListener;->onMountChange(Ljava/lang/String;)V

    .line 1933
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    if-nez v4, :cond_2

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMutexLockNative()V

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$700(Lcom/asus/reader/book/ReaderDatabase;)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMutexUnLockNative()V

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabaseUtil;->updateErrorBookState(Landroid/content/Context;)Z

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$800(Lcom/asus/reader/book/ReaderDatabase;)V

    .line 1942
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$900(Lcom/asus/reader/book/ReaderDatabase;)V

    .line 2048
    :cond_3
    :goto_0
    return-void

    .line 1944
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/16 v5, 0x67

    if-ne v4, v5, :cond_5

    .line 1945
    const-string v4, "ReaderDatabase"

    const-string v5, "===Handler REG_DB_CONTENTOBSERVER==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$1000(Lcom/asus/reader/book/ReaderDatabase;)V

    .line 1947
    const-string v4, "ReaderDatabase"

    const-string v5, "===Handler setBcastReceiver()==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$1100(Lcom/asus/reader/book/ReaderDatabase;)V

    goto :goto_0

    .line 1950
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/16 v5, 0x69

    if-ne v4, v5, :cond_b

    .line 1951
    const-string v4, "ReaderDatabase"

    const-string v5, "===Handler INI_BOOKS==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getDefaultBook()V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    const-string v5, "Preload"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/asus/reader/book/ReaderDatabase;->setPrefSetting(Ljava/lang/String;Z)V

    .line 1956
    const-string v14, "/mnt/sdcard/demo epub.epub"

    .line 1957
    .local v14, book_name:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1958
    .local v18, default_book_1:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1959
    .local v19, default_book_cover_1:Ljava/io/File;
    const/16 v26, 0x0

    .line 1960
    .local v26, mBookStream:Ljava/io/InputStream;
    const/16 v25, 0x0

    .line 1962
    .local v25, mBookCoverStream:Ljava/io/InputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1963
    const-string v4, "ReaderDatabase"

    const-string v5, "SDCard is mounted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1967
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "default_book/demo.epub"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v26

    .line 1970
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1971
    .local v21, fop:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v15, v4, [B

    .line 1973
    .local v15, buf:[B
    :goto_1
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .local v23, len:I
    if-lez v23, :cond_8

    .line 1974
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object v1, v15

    move v2, v4

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1980
    .end local v15           #buf:[B
    .end local v21           #fop:Ljava/io/FileOutputStream;
    .end local v23           #len:I
    :catch_0
    move-exception v4

    move-object/from16 v20, v4

    .line 1981
    .local v20, e:Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .line 1985
    .end local v20           #e:Ljava/io/IOException;
    :cond_6
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1987
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "default_book/demo.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 1990
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1991
    .local v22, fop_cover:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 1993
    .local v16, buf_cover:[B
    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .local v24, len_cover:I
    if-lez v24, :cond_9

    .line 1994
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move v2, v4

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 2000
    .end local v16           #buf_cover:[B
    .end local v22           #fop_cover:Ljava/io/FileOutputStream;
    .end local v24           #len_cover:I
    :catch_1
    move-exception v4

    move-object/from16 v20, v4

    .line 2001
    .restart local v20       #e:Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .line 2005
    .end local v20           #e:Ljava/io/IOException;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const-string v7, "file:///mnt/sdcard/demo epub.epub"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1976
    .restart local v15       #buf:[B
    .restart local v21       #fop:Ljava/io/FileOutputStream;
    .restart local v23       #len:I
    :cond_8
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 1977
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 1979
    const-string v4, "ReaderDatabase"

    const-string v5, "===File save finish==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1996
    .end local v15           #buf:[B
    .end local v21           #fop:Ljava/io/FileOutputStream;
    .end local v23           #len:I
    .restart local v16       #buf_cover:[B
    .restart local v22       #fop_cover:Ljava/io/FileOutputStream;
    .restart local v24       #len_cover:I
    :cond_9
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 1997
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 1999
    const-string v4, "ReaderDatabase"

    const-string v5, "===File Cover save finish==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 2008
    .end local v16           #buf_cover:[B
    .end local v22           #fop_cover:Ljava/io/FileOutputStream;
    .end local v24           #len_cover:I
    :cond_a
    const-string v4, "ReaderDatabase"

    const-string v5, "SDCard is not mounted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2011
    .end local v14           #book_name:Ljava/lang/String;
    .end local v18           #default_book_1:Ljava/io/File;
    .end local v19           #default_book_cover_1:Ljava/io/File;
    .end local v25           #mBookCoverStream:Ljava/io/InputStream;
    .end local v26           #mBookStream:Ljava/io/InputStream;
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_11

    .line 2012
    const-string v7, "volume_id = 1999"

    .line 2013
    .local v7, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    sget-object v6, Lcom/asus/reader/book/ReaderDatabase;->ID_DOC_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2014
    .local v17, cursor_usb:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 2016
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2017
    :cond_c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2022
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    const/4 v5, 0x2

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/reader/book/ReaderDatabase;->access$1200(Lcom/asus/reader/book/ReaderDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2029
    .local v27, mCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_10

    .line 2030
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2031
    const/4 v4, 0x2

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    move-object v4, v0

    const/4 v5, 0x2

    move-object/from16 v0, v27

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/asus/reader/book/ReaderDatabase;->access$500(Lcom/asus/reader/book/ReaderDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_e
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2039
    .end local v27           #mCursor:Landroid/database/Cursor;
    :cond_f
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    .line 2036
    .restart local v27       #mCursor:Landroid/database/Cursor;
    :cond_10
    const-string v4, "ReaderDatabase"

    const-string v5, "LatestBookPath Cursor == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2046
    .end local v7           #where:Ljava/lang/String;
    .end local v17           #cursor_usb:Landroid/database/Cursor;
    .end local v27           #mCursor:Landroid/database/Cursor;
    :cond_11
    const-string v4, "ReaderDatabase"

    const-string v5, "===Do Nothing==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
