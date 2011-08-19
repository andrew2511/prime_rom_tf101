.class final Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
.super Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberLoadingAsyncTask"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private final mShortcutAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "shortcutAction"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 192
    iput-object p3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$400()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 201
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 203
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhotoId:J

    .line 204
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    .line 205
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1
    return-void

    .line 208
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mBitmapData:[B

    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    iget v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/list/ShortcutIntentBuilder;->access$500(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;)V

    .line 217
    return-void
.end method
