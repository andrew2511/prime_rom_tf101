.class Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;
.super Landroid/os/AsyncTask;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePresenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfoFetcher:Lcom/google/android/gm/SenderInfoFetcher;

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1737
    .local p2, emailAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1738
    new-instance v0, Lcom/google/android/gm/SenderInfoFetcher;

    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gm/SenderInfoFetcher;-><init>(Landroid/content/ContentResolver;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->mInfoFetcher:Lcom/google/android/gm/SenderInfoFetcher;

    .line 1739
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1734
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->mInfoFetcher:Lcom/google/android/gm/SenderInfoFetcher;

    invoke-virtual {v0}, Lcom/google/android/gm/SenderInfoFetcher;->getUpdateJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1734
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "json"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v0

    .line 1751
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1752
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:gm.updateContactInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1754
    :cond_0
    monitor-exit v0

    .line 1755
    return-void

    .line 1754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
