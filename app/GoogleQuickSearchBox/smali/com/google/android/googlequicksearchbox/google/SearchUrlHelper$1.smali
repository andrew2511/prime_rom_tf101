.class Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;
.super Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;
.source "SearchUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->checkSearchDomain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/util/FetchUrlTask;-><init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 280
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "domain"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->access$000(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->setDomain(Ljava/lang/String;)V

    .line 284
    return-void
.end method
