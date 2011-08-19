.class public interface abstract Lcom/google/android/apps/books/provider/BooksContract$Volumes$Viewability;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Viewability"
.end annotation


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_unknown"

.field public static final VIEW_ALL_PAGES:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_all_pages"

.field public static final VIEW_NO_PAGES:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_no_pages"

.field public static final VIEW_PARTIAL:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_partial"
