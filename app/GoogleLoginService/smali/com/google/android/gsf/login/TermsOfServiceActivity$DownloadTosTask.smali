.class Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;
.super Landroid/os/AsyncTask;
.source "TermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/TermsOfServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;Lcom/google/android/gsf/login/TermsOfServiceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;-><init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;
    .locals 3
    .parameter "urls"

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-static {v1}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->access$100(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/HttpHelper;->getTos(Ljava/lang/String;)Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GoogleLoginService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->doInBackground([Ljava/lang/String;)Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;)V
    .locals 8
    .parameter "tos"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->access$200()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, content:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v0, "Amphitheatre"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "<!-- Android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->access$300(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    const-string v1, "http://www.google.com"

    invoke-virtual {p1}, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {}, Lcom/google/android/gsf/login/BaseActivity;->getFallbackTosUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/GoogleWebContentHelper;->loadDataWithFailUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2           #content:Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    return-void

    .line 132
    .restart local v2       #content:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->access$300(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gsf/login/BaseActivity;->getFallbackTosUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/login/BaseActivity;->getFallbackTosUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    const v3, 0x7f08002f

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 139
    .end local v2           #content:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 140
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "GoogleLoginService"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->access$300(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gsf/login/BaseActivity;->getFallbackTosUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/login/BaseActivity;->getFallbackTosUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    const v3, 0x7f08002f

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    goto :goto_0

    .line 148
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->onPostExecute(Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;)V

    return-void
.end method
