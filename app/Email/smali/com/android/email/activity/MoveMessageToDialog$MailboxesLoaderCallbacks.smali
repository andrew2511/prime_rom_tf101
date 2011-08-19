.class Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxesLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$400(Lcom/android/email/activity/MoveMessageToDialog;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$600(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$600(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 210
    return-void
.end method
