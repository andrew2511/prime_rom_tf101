.class Lcom/amazon/kcp/library/TransientActivity$6;
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
    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 4
    .parameter "erroredItemWrapper"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/TransientActivity;->access$800(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1, p1}, Lcom/amazon/kcp/library/TransientActivity;->access$600(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/TransientActivity;->access$300(Lcom/amazon/kcp/library/TransientActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v3}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    .line 187
    .local v0, archivedItem:Lcom/amazon/kcp/library/models/internal/IMetadata;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/TransientActivity;->access$700(Lcom/amazon/kcp/library/TransientActivity;I)V

    .line 201
    .end local v0           #archivedItem:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v0       #archivedItem:Lcom/amazon/kcp/library/models/internal/IMetadata;
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/TransientActivity;->access$1000(Lcom/amazon/kcp/library/TransientActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/TransientActivity;->access$700(Lcom/amazon/kcp/library/TransientActivity;I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/TransientActivity;->setResult(I)V

    .line 198
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    goto :goto_0
.end method
