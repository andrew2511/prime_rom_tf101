.class Lcom/asus/reader/BookListActivity$13;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->loadCategoryandBooks()V
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
    .line 2148
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 2151
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Category_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->category_projection:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2153
    .local v10, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->reBuildCategory(Landroid/database/Cursor;)V

    .line 2154
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4c4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2158
    const-string v9, "title ASC"

    .line 2159
    .local v9, sort:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c7

    if-ne v0, v1, :cond_4

    .line 2160
    const-string v9, "creator ASC"

    .line 2170
    :cond_0
    :goto_0
    const-string v7, ""

    .line 2171
    .local v7, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

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

    move-result-object v7

    .line 2173
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 2174
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2175
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v7

    .line 2176
    const-string v9, "date_access DESC"

    .line 2177
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3502(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2190
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3602(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2191
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2192
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3600(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2194
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v6, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2199
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4c3

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2203
    return-void

    .line 2161
    .end local v7           #where:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c9

    if-ne v0, v1, :cond_6

    .line 2162
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 2163
    const-string v9, "_id DESC"

    goto/16 :goto_0

    .line 2165
    :cond_5
    const-string v9, "local_order DESC, _id DESC"

    goto/16 :goto_0

    .line 2166
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3400(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const v1, 0x7f0b00c8

    if-ne v0, v1, :cond_0

    .line 2167
    const-string v9, "_id DESC"

    goto/16 :goto_0

    .line 2178
    .restart local v7       #where:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 2179
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2181
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 2182
    :cond_9
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 2183
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2185
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 2187
    :cond_c
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$13;->this$0:Lcom/asus/reader/BookListActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3502(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method
