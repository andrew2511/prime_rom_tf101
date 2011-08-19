.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;
.super Ljava/lang/Object;
.source "GmailWidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->setupInbox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1, p2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$302(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$000(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    .line 165
    return-void

    .line 156
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    check-cast p2, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;->onLoadComplete(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method
