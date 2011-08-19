.class public Lcom/google/android/apps/books/app/TabletBooksApplication;
.super Lcom/google/android/apps/books/app/BooksApplication;
.source "TabletBooksApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/TabletBooksApplication$1;,
        Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;
    }
.end annotation


# instance fields
.field private mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksApplication;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;-><init>(Lcom/google/android/apps/books/app/TabletBooksApplication;Lcom/google/android/apps/books/app/TabletBooksApplication$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    .line 31
    return-void
.end method


# virtual methods
.method public getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    return-object v0
.end method
