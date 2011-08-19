.class Lcom/google/android/youtube/app/ui/WatchCommentsHelper$4;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "WatchCommentsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$4;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 2
    .parameter "userAuth"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchCommentsHelper$4;->this$0:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchCommentsHelper;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 155
    return-void
.end method
