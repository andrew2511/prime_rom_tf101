.class Lcom/asus/dictionary/Dictionary$XLoadLibrary;
.super Ljava/lang/Object;
.source "Dictionary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XLoadLibrary"
.end annotation


# instance fields
.field private counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private dictFile:Ljava/lang/String;

.field private dictInstance:I

.field private handler:Landroid/os/Handler;

.field private langPair:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method public constructor <init>(Lcom/asus/dictionary/Dictionary;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "dictFile"
    .parameter "langPair"
    .parameter "counter"

    .prologue
    const/4 v0, 0x0

    .line 1299
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object v0, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->handler:Landroid/os/Handler;

    .line 1294
    iput-object v0, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictFile:Ljava/lang/String;

    .line 1295
    iput-object v0, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    .line 1300
    iput-object p2, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->handler:Landroid/os/Handler;

    .line 1301
    iput-object p3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictFile:Ljava/lang/String;

    .line 1302
    iput-object p4, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    .line 1303
    iput-object p5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1304
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1317
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1319
    :cond_0
    const-string v3, "Dictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target language pair:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " missing dictionary files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_1
    :goto_0
    return-void

    .line 1323
    :cond_2
    sget-object v3, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xcome/dictionary/XDictManager;->loadDictionary(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictInstance:I

    .line 1325
    sget-object v3, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    iget v4, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictInstance:I

    invoke-virtual {v3, v4}, Lcom/xcome/dictionary/XDictManager;->getDictSize(I)I

    move-result v1

    .line 1326
    .local v1, dictWordCount:I
    sget-boolean v3, Lcom/asus/dictionary/Dictionary;->DBG:Z

    if-eqz v3, :cond_3

    .line 1327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1328
    .local v0, book:Ljava/lang/StringBuffer;
    const-string v3, "Dict:["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/asus/dictionary/Dictionary;->mDictManager:Lcom/xcome/dictionary/XDictManager;

    iget v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictInstance:I

    invoke-virtual {v4, v5}, Lcom/xcome/dictionary/XDictManager;->getDictBookName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1329
    const-string v3, "(Words:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    const-string v3, "Dictionary"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    .end local v0           #book:Ljava/lang/StringBuffer;
    :cond_3
    if-nez v1, :cond_4

    .line 1334
    const-string v3, "Dictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target language pair:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loading falied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    :cond_4
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v3}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    iget v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictInstance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const-string v3, "Dictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLangInstanceMap.put langPair="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->langPair:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dictInstance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->dictInstance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    .line 1341
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v3}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 1342
    :try_start_0
    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$XLoadLibrary;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v4}, Lcom/asus/dictionary/Dictionary;->access$600(Lcom/asus/dictionary/Dictionary;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1343
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
