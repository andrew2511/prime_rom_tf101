.class public interface abstract Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
.super Ljava/lang/Object;
.source "ContentFetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/ContentFetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SectionContentCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/io/IOException;)V
.end method

.method public abstract onSuccess(Lcom/google/android/apps/books/model/SectionContent;)V
.end method
