.class Lcom/asus/reader/ui/SearchEditText$SearchThread;
.super Ljava/lang/Thread;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchThread"
.end annotation


# instance fields
.field private mToken:I

.field final synthetic this$0:Lcom/asus/reader/ui/SearchEditText;


# direct methods
.method public constructor <init>(Lcom/asus/reader/ui/SearchEditText;I)V
    .locals 1
    .parameter
    .parameter "random"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    .line 254
    const-string v0, "SearchThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 255
    iput p2, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    .line 256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 260
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$700(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$700(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 261
    :cond_0
    const-string v7, "SearchEditText"

    const-string v8, "SearchThread: search text is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$700(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, keyword:Ljava/lang/String;
    const/4 v6, 0x0

    .line 266
    .local v6, startPos:Ljava/lang/String;
    const/4 v1, 0x0

    .line 267
    .local v1, endPos:Ljava/lang/String;
    const/4 v4, 0x0

    .line 270
    .local v4, pageNum:I
    const-string v7, "SearchEditText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start to search the Keywork:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_1
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$800(Lcom/asus/reader/ui/SearchEditText;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    iget v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    iget-object v8, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v8}, Lcom/asus/reader/ui/SearchEditText;->access$900(Lcom/asus/reader/ui/SearchEditText;)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 302
    :cond_2
    const-string v7, "SearchEditText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish to search the Keywork:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$1100(Lcom/asus/reader/ui/SearchEditText;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 305
    .local v3, msg:Landroid/os/Message;
    iget v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 306
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 275
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    invoke-static {v2, v6, v1}, Lcom/asus/reader/book/BookmarkUtility;->searchString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 276
    .local v5, searchResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    iget-object v8, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v8}, Lcom/asus/reader/ui/SearchEditText;->access$900(Lcom/asus/reader/ui/SearchEditText;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 279
    if-eqz v5, :cond_2

    .line 282
    const-string v7, "find"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v7}, Lcom/asus/reader/ui/SearchEditText;->access$1000(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;

    move-result-object v7

    iget v8, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    invoke-interface {v7, v5, v8}, Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;->onGetNextResult(Ljava/util/HashMap;I)V

    .line 288
    const-string v7, "page"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 289
    const-string v7, "start"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #startPos:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 290
    .restart local v6       #startPos:Ljava/lang/String;
    const-string v7, "end"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #endPos:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 292
    .restart local v1       #endPos:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Find on page:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", startPos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " endPos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", mToken:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/asus/reader/ui/SearchEditText$SearchThread;->mToken:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v7, "SearchEditText"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object v6, v1

    .line 300
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
