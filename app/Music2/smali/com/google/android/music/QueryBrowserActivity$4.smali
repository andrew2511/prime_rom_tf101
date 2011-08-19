.class Lcom/google/android/music/QueryBrowserActivity$4;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$4;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$4;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$4;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/QueryBrowserActivity;->access$300(Lcom/google/android/music/QueryBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$4;->cursor:Landroid/database/Cursor;

    .line 288
    return-void
.end method

.method public taskCompleted()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$4;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$4;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 292
    return-void
.end method
