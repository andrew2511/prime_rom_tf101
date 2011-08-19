.class Lcom/asus/reader/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/Cache;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/Cache;


# direct methods
.method constructor <init>(Lcom/asus/reader/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/asus/reader/Cache$1;->this$0:Lcom/asus/reader/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 75
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v0, "/data/data/com.asus.reader/cache/"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v8, dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v8           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/Cache$1;->this$0:Lcom/asus/reader/Cache;

    invoke-static {v0}, Lcom/asus/reader/Cache;->access$100(Lcom/asus/reader/Cache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Cache_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->cache_projection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 85
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 86
    const-string v0, "Cache"

    const-string v1, "Create Cache table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "content://reader/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 88
    .local v6, ReaderTableCache:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 89
    .local v11, values:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    const/16 v0, 0x14

    if-ge v10, v0, :cond_1

    .line 90
    const-string v0, "filename"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/asus/reader/Cache$1;->this$0:Lcom/asus/reader/Cache;

    invoke-static {v0}, Lcom/asus/reader/Cache;->access$100(Lcom/asus/reader/Cache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 92
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 78
    .end local v6           #ReaderTableCache:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 79
    .local v9, e:Ljava/lang/SecurityException;
    const-string v0, "Cache"

    const-string v1, "cannot create cache DIR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v9           #e:Ljava/lang/SecurityException;
    .restart local v6       #ReaderTableCache:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v10       #i:I
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v6           #ReaderTableCache:Landroid/net/Uri;
    .end local v10           #i:I
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_2
    return-void

    .line 97
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
