.class Lcom/google/android/music/AlbumBrowserActivity$2;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AlbumBrowserActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public artistName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->artistName:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$200(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/medialist/AlbumList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AlbumList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->artistName:Ljava/lang/CharSequence;

    .line 261
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$300(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->artistName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$300(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->artistName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$300(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    const v2, 0x7f0c0054

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    goto :goto_0
.end method
