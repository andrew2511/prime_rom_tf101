.class Lcom/google/android/youtube/core/async/UserAuthorizer$2;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 301
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$2;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 303
    const-string v0, "login canceled"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$2;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    .line 306
    return-void
.end method
