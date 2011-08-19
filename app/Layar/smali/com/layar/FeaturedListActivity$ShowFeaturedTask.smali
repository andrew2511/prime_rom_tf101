.class Lcom/layar/FeaturedListActivity$ShowFeaturedTask;
.super Landroid/os/AsyncTask;
.source "FeaturedListActivity.java"

# interfaces
.implements Lcom/layar/data/layer/LayerManager$LayerFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FeaturedListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowFeaturedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/Layer20;",
        "Lcom/layar/data/layer/LayerManager$LayersResponse;",
        ">;",
        "Lcom/layar/data/layer/LayerManager$LayerFoundListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/FeaturedListActivity;


# direct methods
.method private constructor <init>(Lcom/layar/FeaturedListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/FeaturedListActivity;Lcom/layar/FeaturedListActivity$ShowFeaturedTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;-><init>(Lcom/layar/FeaturedListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 6
    .parameter "params"

    .prologue
    .line 141
    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v2, v2, Lcom/layar/FeaturedListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mSelectedSubSection:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/layar/data/layer/LayerManager;->getFeaturedLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v1

    .line 142
    .local v1, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    .line 143
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    .line 142
    invoke-static {v3}, Lcom/layar/data/layer/GroupsManager;->getGroupsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layar/FeaturedListActivity;->access$0(Lcom/layar/FeaturedListActivity;Ljava/util/ArrayList;)V

    .line 145
    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v2}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v2}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v2}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    :cond_0
    return-object v1

    .line 146
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayersGroup;

    .line 147
    .local v0, group:Lcom/layar/data/layer/LayersGroup;
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget v4, v0, Lcom/layar/data/layer/LayersGroup;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/layar/data/layer/LayerManager;->getGroupLayers(ILcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 217
    return-void
.end method

.method public onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "layer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/Layer20;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v0}, Lcom/layar/FeaturedListActivity;->access$2(Lcom/layar/FeaturedListActivity;)Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 208
    new-array v0, v2, [Lcom/layar/data/layer/Layer20;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->publishProgress([Ljava/lang/Object;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v0}, Lcom/layar/FeaturedListActivity;->access$2(Lcom/layar/FeaturedListActivity;)Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    move-result-object v0

    if-ne v0, p0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/layar/data/layer/LayerManager$LayersResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v1}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v1}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, count:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v1}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/layar/FeaturedListActivity;->access$3()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/layer/LayersGroup;

    iget-object v2, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v2}, Lcom/layar/FeaturedListActivity;->access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/layar/FeaturedListActivity;->access$4()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/data/layer/LayersGroup;

    invoke-static {v3, v1, v2}, Lcom/layar/FeaturedListActivity;->access$5(Lcom/layar/FeaturedListActivity;Lcom/layar/data/layer/LayersGroup;Lcom/layar/data/layer/LayersGroup;)V

    .line 188
    .end local v0           #count:I
    :cond_0
    invoke-virtual {p0}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-virtual {v1}, Lcom/layar/FeaturedListActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v1}, Lcom/layar/FeaturedListActivity;->access$2(Lcom/layar/FeaturedListActivity;)Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 194
    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v1, v1, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-virtual {v1}, Lcom/layar/FeaturedListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900cc

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v1, v1, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v1, v1, Lcom/layar/FeaturedListActivity;->helper:Lcom/layar/ActivityHelper;

    iget v2, p1, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-virtual {p0, p1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayersResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 135
    iget-object v0, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v0, v0, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 136
    return-void
.end method

.method public varargs onProgressUpdate([Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 155
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 155
    :cond_1
    aget-object v0, p1, v2

    .line 156
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    invoke-static {v3}, Lcom/layar/FeaturedListActivity;->access$2(Lcom/layar/FeaturedListActivity;)Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 159
    sget-boolean v3, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v3, v0}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    .line 168
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v3, v0}, Lcom/layar/adapters/BaseLayersAdapter;->add(Lcom/layar/data/layer/Layer20;)V

    .line 169
    iget-object v3, p0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->this$0:Lcom/layar/FeaturedListActivity;

    iget-object v3, v3, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->onProgressUpdate([Lcom/layar/data/layer/Layer20;)V

    return-void
.end method
