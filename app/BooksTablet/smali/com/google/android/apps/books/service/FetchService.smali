.class public interface abstract Lcom/google/android/apps/books/service/FetchService;
.super Ljava/lang/Object;
.source "FetchService.java"


# virtual methods
.method public abstract ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
