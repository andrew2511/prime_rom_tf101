.class Lcom/amazon/kcp/library/TransientActivity$5;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/TransientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 5
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$800(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/TransientActivity;->access$600(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/TransientActivity;->access$300(Lcom/amazon/kcp/library/TransientActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/TransientActivity;->access$900(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/TransientActivity;->setResult(I)V

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    .line 170
    :cond_1
    return-void
.end method
