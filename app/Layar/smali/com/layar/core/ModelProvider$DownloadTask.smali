.class Lcom/layar/core/ModelProvider$DownloadTask;
.super Ljava/lang/Object;
.source "ModelProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/ModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/core/ModelProvider;


# direct methods
.method public constructor <init>(Lcom/layar/core/ModelProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 102
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$0(Lcom/layar/core/ModelProvider;)Lcom/layar/util/StatusHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v5}, Lcom/layar/core/ModelProvider;->access$1(Lcom/layar/core/ModelProvider;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/layar/util/StatusHelper;->addProgress(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/layar/data/ImageCache;->readModel(Ljava/lang/String;)Lcom/layar/core/Layar3DModel;

    move-result-object v1

    .line 108
    .local v1, model:Lcom/layar/core/Layar3DModel;
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/layar/data/ImageCache;->downloadModel(Ljava/lang/String;)Lcom/layar/core/Layar3DModel;

    move-result-object v1

    .line 109
    :cond_1
    monitor-enter p0

    .line 110
    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    new-instance v2, Lcom/layar/core/ModelRenderer;

    invoke-direct {v2, v1}, Lcom/layar/core/ModelRenderer;-><init>(Lcom/layar/core/Layar3DModel;)V

    .line 114
    .local v2, renderer:Lcom/layar/core/ModelRenderer;
    invoke-virtual {v2}, Lcom/layar/core/ModelRenderer;->startAnimation()V

    .line 115
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$2(Lcom/layar/core/ModelProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/core/ModelRenderer;->setLightingEnabled(Z)V

    .line 116
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$3(Lcom/layar/core/ModelProvider;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2           #renderer:Lcom/layar/core/ModelRenderer;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$6(Lcom/layar/core/ModelProvider;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$0(Lcom/layar/core/ModelProvider;)Lcom/layar/util/StatusHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/util/StatusHelper;->finishProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 120
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$4(Lcom/layar/core/ModelProvider;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$0(Lcom/layar/core/ModelProvider;)Lcom/layar/util/StatusHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v4}, Lcom/layar/core/ModelProvider;->access$5(Lcom/layar/core/ModelProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/util/StatusHelper;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 126
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$4(Lcom/layar/core/ModelProvider;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v3}, Lcom/layar/core/ModelProvider;->access$0(Lcom/layar/core/ModelProvider;)Lcom/layar/util/StatusHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/core/ModelProvider$DownloadTask;->this$0:Lcom/layar/core/ModelProvider;

    invoke-static {v4}, Lcom/layar/core/ModelProvider;->access$5(Lcom/layar/core/ModelProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/util/StatusHelper;->setError(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
