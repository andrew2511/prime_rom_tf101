.class public Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;
.super Landroid/database/MatrixCursor;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/SuggestionsProvider;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "columnNames"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;->this$0:Lcom/google/android/gm/SuggestionsProvider;

    .line 91
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;
    .locals 11
    .parameter "query"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 95
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, contactsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;->this$0:Lcom/google/android/gm/SuggestionsProvider;

    invoke-virtual {v0}, Lcom/google/android/gm/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gm/SuggestionsProvider;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 100
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 101
    const-string v0, "data4"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 103
    .local v9, nameIndex:I
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 106
    .local v6, addressIndex:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, match:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const/4 v2, 0x1

    aput-object v8, v0, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;->this$0:Lcom/google/android/gm/SuggestionsProvider;

    invoke-static {v4, v8}, Lcom/google/android/gm/SuggestionsProvider;->access$100(Lcom/google/android/gm/SuggestionsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 115
    .end local v8           #match:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v6           #addressIndex:I
    .end local v9           #nameIndex:I
    :cond_2
    return-object p0
.end method
