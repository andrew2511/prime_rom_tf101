.class Lcom/google/android/youtube/core/async/UserAuthorizer$3;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->access$100(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->access$100(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 297
    :goto_0
    const-string v0, "logging in"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 298
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->access$200(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    goto :goto_0
.end method
