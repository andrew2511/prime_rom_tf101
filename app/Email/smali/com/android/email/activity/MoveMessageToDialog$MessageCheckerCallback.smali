.class Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;
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
    name = "MessageCheckerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/Long;",
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
    .line 161
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$200(Lcom/android/email/activity/MoveMessageToDialog;)[J

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;-><init>(Landroid/app/Activity;[J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Long;)V
    .locals 5
    .parameter
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$300(Lcom/android/email/activity/MoveMessageToDialog;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$402(Lcom/android/email/activity/MoveMessageToDialog;J)J

    .line 179
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x3e8

    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Long;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/lang/Long;>;"
    return-void
.end method
