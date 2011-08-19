.class Lcom/google/android/finsky/activities/AuthenticatedActivity$5;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$accounts:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->val$accounts:[Landroid/accounts/Account;

    aget-object v1, v1, p2

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 532
    .local v0, newAccount:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    .line 534
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->removeDialog(I)V

    .line 538
    return-void
.end method
