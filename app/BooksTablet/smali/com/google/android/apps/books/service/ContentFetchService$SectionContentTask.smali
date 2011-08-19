.class final Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;
.super Landroid/os/AsyncTask;
.source "ContentFetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/ContentFetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SectionContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/books/model/SectionContent;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private final mFactory:Lcom/google/android/apps/books/model/SectionContentFactory;

.field final synthetic this$0:Lcom/google/android/apps/books/service/ContentFetchService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/SectionContentFactory;)V
    .locals 0
    .parameter
    .parameter "factory"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mFactory:Lcom/google/android/apps/books/model/SectionContentFactory;

    .line 620
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/SectionContent;
    .locals 2
    .parameter "voids"

    .prologue
    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mFactory:Lcom/google/android/apps/books/model/SectionContentFactory;

    invoke-virtual {v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->newSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 629
    :goto_0
    return-object v1

    .line 626
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 628
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/lang/Exception;

    .line 629
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/SectionContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/books/model/SectionContent;)V
    .locals 4
    .parameter "sectionContent"

    .prologue
    .line 636
    iget-object v2, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-static {v2}, Lcom/google/android/apps/books/service/ContentFetchService;->access$000(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-static {v3}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v3

    if-nez v3, :cond_1

    .line 638
    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContent;->close()V

    .line 654
    .end local p0
    :cond_0
    :goto_0
    monitor-exit v2

    .line 655
    return-void

    .line 641
    .restart local p0
    :cond_1
    if-eqz p1, :cond_2

    .line 642
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-static {v3}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;->onSuccess(Lcom/google/android/apps/books/model/SectionContent;)V

    goto :goto_0

    .line 654
    .end local p0
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 644
    .restart local p0
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/lang/Exception;

    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 645
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-static {v3}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/lang/Exception;

    .end local p0
    check-cast p0, Ljava/io/IOException;

    invoke-interface {v3, p0}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;->onFailure(Ljava/io/IOException;)V

    goto :goto_0

    .line 648
    .restart local p0
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, message:Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, ioe:Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 651
    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-static {v3}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;->onFailure(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, Lcom/google/android/apps/books/model/SectionContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->onPostExecute(Lcom/google/android/apps/books/model/SectionContent;)V

    return-void
.end method
