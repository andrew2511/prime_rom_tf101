.class Lcom/google/android/finsky/activities/AuthenticatedActivity$8;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 656
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 657
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "androidmarket"

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    new-instance v6, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity$8;)V

    move-object v4, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 674
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 675
    return-void
.end method
