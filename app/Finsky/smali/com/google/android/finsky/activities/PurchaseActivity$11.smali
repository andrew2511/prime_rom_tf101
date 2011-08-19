.class Lcom/google/android/finsky/activities/PurchaseActivity$11;
.super Landroid/webkit/WebViewClient;
.source "PurchaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->setupWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1129
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Page Started WebView URL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V

    .line 1143
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1152
    const-string v1, "Purchase failed with error %d and message %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 1103
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Override WebView URL: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    :cond_0
    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1, p2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V

    .line 1119
    :goto_0
    return v4

    .line 1114
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1115
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$11;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
