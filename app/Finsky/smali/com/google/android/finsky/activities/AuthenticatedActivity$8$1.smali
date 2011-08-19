.class Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;->this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;->this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    iget-object v1, v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 667
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;->this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    iget-object v1, v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 672
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;->this$1:Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    iget-object v1, v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$400(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    goto :goto_0
.end method
