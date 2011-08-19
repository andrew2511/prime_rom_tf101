.class Lcom/asus/reader/book/ReaderDatabase$2;
.super Landroid/content/BroadcastReceiver;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase;->setBcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ReaderDatabase;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 1861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1863
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1864
    const-string v0, "ReaderDatabase"

    const-string v1, "==========ACTION_EPAD_EXTERNAL_MEDIA_MOUNTED=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$402(Z)Z

    .line 1879
    :goto_0
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    const-string v0, "ReaderDatabase"

    const-string v1, "=============ACTION_EPAD_EXTERNAL_MEDIA_BAD_REMOVAL=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1884
    .local v8, mCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1885
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1886
    new-instance v7, Ljava/io/File;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v7, mBook:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mUnMountlistener:Lcom/asus/reader/book/ReaderDatabase$unMountListener;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mUnMountlistener:Lcom/asus/reader/book/ReaderDatabase$unMountListener;

    invoke-interface {v0}, Lcom/asus/reader/book/ReaderDatabase$unMountListener;->finishReadBook()V

    .line 1891
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->access$500(Lcom/asus/reader/book/ReaderDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v0, "ReaderDatabase"

    const-string v1, "finishReadBook()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    .end local v7           #mBook:Ljava/io/File;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1900
    .end local v8           #mCursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1901
    const-string v0, "ReaderDatabase"

    const-string v1, "==========ACTION_MEDIA_SCANNER_FINISHED=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$300(Lcom/asus/reader/book/ReaderDatabase;)Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendEmptyMessage(I)Z

    .line 1905
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$402(Z)Z

    .line 1907
    :cond_2
    return-void

    .line 1867
    :cond_3
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1868
    const-string v0, "ReaderDatabase"

    const-string v1, "==========ACTION_EPAD_EXTERNAL_MEDIA_UNMOUNTED=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$2;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->access$300(Lcom/asus/reader/book/ReaderDatabase;)Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1875
    :cond_4
    const-string v0, "ReaderDatabase"

    const-string v1, "==========ACTION_EPAD_EXTERNAL_MEDIA_UNMOUNTABLE OR EJECT=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
