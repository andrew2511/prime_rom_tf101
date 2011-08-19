.class Lcom/layar/SearchLayersActivity$1;
.super Ljava/lang/Object;
.source "SearchLayersActivity.java"

# interfaces
.implements Lcom/layar/data/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SearchLayersActivity;->getLayersListener()Lcom/layar/data/DownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layar/data/DownloadListener",
        "<",
        "Lcom/layar/data/layer/Layer20;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/SearchLayersActivity;


# direct methods
.method constructor <init>(Lcom/layar/SearchLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloaded(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 172
    return-void
.end method

.method public onDownloadingCanceled()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v0}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/SearchLayersActivity;->access$0(Lcom/layar/SearchLayersActivity;Lcom/layar/data/layer/GetLayersTask;)V

    .line 179
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$1(Lcom/layar/SearchLayersActivity;)V

    .line 180
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$2(Lcom/layar/SearchLayersActivity;)V

    goto :goto_0
.end method

.method public onDownloadingEnded()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v1}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/SearchLayersActivity;->access$0(Lcom/layar/SearchLayersActivity;Lcom/layar/data/layer/GetLayersTask;)V

    .line 189
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager;->getPageParams()Lcom/layar/data/PaginationParams;

    move-result-object v0

    .line 190
    .local v0, pagination:Lcom/layar/data/PaginationParams;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v1, :cond_2

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v1}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/adapters/StandardLayersAdapter;->removePendingItem()V

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v1}, Lcom/layar/SearchLayersActivity;->access$2(Lcom/layar/SearchLayersActivity;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v1}, Lcom/layar/SearchLayersActivity;->access$1(Lcom/layar/SearchLayersActivity;)V

    goto :goto_1
.end method

.method public onDownloadingError(I)V
    .locals 3
    .parameter "responseCode"

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v0}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    iget-object v0, v0, Lcom/layar/SearchLayersActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 202
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->removePendingItem()V

    .line 203
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v0}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$4(Lcom/layar/SearchLayersActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDownloadingStarted()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v0}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->addPendingItem()V

    goto :goto_0
.end method

.method public onItemDownloaded(Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v0}, Lcom/layar/SearchLayersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$5(Lcom/layar/SearchLayersActivity;)Lcom/layar/ui/SearchWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/SearchWidget;->isSearchingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->removePendingItem()V

    .line 220
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layar/adapters/StandardLayersAdapter;->add(Lcom/layar/data/layer/Layer20;)V

    .line 221
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->addPendingItem()V

    .line 222
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$1;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$2(Lcom/layar/SearchLayersActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemDownloaded(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/SearchLayersActivity$1;->onItemDownloaded(Lcom/layar/data/layer/Layer20;)V

    return-void
.end method
