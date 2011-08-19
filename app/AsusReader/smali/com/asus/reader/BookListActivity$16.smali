.class Lcom/asus/reader/BookListActivity$16;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->loadBooks()V
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
    .line 2233
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2236
    const-string v5, "title ASC"

    .line 2237
    .local v5, sort:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c7

    if-ne v0, v1, :cond_4

    .line 2238
    const-string v5, "creator ASC"

    .line 2248
    :cond_0
    :goto_0
    const-string v3, ""

    .line 2249
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2252
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 2253
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2254
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date_access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > 0 ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2255
    const-string v5, "date_access DESC"

    .line 2256
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3502(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2269
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3602(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2271
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3600(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2273
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2279
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4c3

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2281
    return-void

    .line 2239
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c9

    if-ne v0, v1, :cond_6

    .line 2240
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 2241
    const-string v5, "_id DESC"

    goto/16 :goto_0

    .line 2243
    :cond_5
    const-string v5, "local_order DESC, _id DESC"

    goto/16 :goto_0

    .line 2244
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c8

    if-ne v0, v1, :cond_0

    .line 2245
    const-string v5, "_id DESC"

    goto/16 :goto_0

    .line 2257
    .restart local v3       #where:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2258
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2260
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2261
    :cond_9
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 2262
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2264
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2266
    :cond_c
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$16;->this$0:Lcom/asus/reader/BookListActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3502(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method
