.class Lcom/android/email/activity/AccountShortcutPicker$AccountTask;
.super Landroid/os/AsyncTask;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/email/activity/AccountShortcutPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;-><init>(Lcom/android/email/activity/AccountShortcutPicker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountShortcutPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    const/4 v6, 0x0

    .line 129
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v2}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    .line 145
    .local v1, activity:Lcom/android/email/activity/AccountShortcutPicker;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040016

    invoke-static {}, Lcom/android/email/activity/AccountShortcutPicker;->access$100()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/AccountShortcutPicker;->access$200()[I

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 147
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {v1}, Lcom/android/email/activity/AccountShortcutPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
