.class interface abstract Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
.super Ljava/lang/Object;
.source "ReadingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReadingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Reader"
.end annotation


# virtual methods
.method public abstract accessDenied(I)V
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
.end method
