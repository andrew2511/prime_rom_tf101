.class Lcom/android/inputmethod/latin/UserDictionary$2;
.super Ljava/lang/Thread;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserDictionary;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    iput-object p3, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$word:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/inputmethod/latin/UserDictionary;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "word=? and ((locale IS NULL) or (locale=?))"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$word:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-static {v12}, Lcom/android/inputmethod/latin/UserDictionary;->access$100(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "locale"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, locale:Ljava/lang/String;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserDictionary;->access$100(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 113
    .local v7, id:J
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 115
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v10, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    .end local v7           #id:J
    .end local v9           #locale:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
