.class Lcom/google/android/apps/books/render/WebViewRenderer$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$3;,"Lcom/google/android/apps/books/render/WebViewRenderer.3;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$3;,"Lcom/google/android/apps/books/render/WebViewRenderer.3;"
    const-string v7, "WebViewRenderer"

    .line 133
    const-string v5, "WebViewRenderer"

    const/4 v5, 0x2

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    const-string v5, "WebViewRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldInterceptRequest(url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v2

    .line 139
    .local v2, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v4

    .line 141
    .local v4, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    .line 143
    .local v3, match:I
    sparse-switch v3, :sswitch_data_0

    .line 169
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #match:I
    .end local v4           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :goto_0
    const-string v5, "WebViewRenderer"

    const-string v5, "unable to build valid response, returning 404 not found"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$600()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    :goto_1
    return-object v5

    .line 145
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v2       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v3       #match:I
    .restart local v4       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :sswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v4, v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$300(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto :goto_1

    .line 149
    :sswitch_1
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v5}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v4, v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$400(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_1

    .line 153
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #match:I
    .end local v4           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 155
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "WebViewRenderer"

    const-string v5, "shouldInterceptRequest was missing VolumeMetadata"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 159
    .local v1, e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v5, v1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 160
    .end local v1           #e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 161
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-static {v5, v1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 165
    .local v1, e:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer$3;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5, v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0x12e -> :sswitch_1
    .end sparse-switch
.end method
