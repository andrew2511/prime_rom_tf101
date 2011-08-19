.class public interface abstract Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation


# static fields
.field public static final CHOSE_BOOKMARK:Ljava/lang/String; = "ChoseBookmark"

.field public static final NEXT_PAGE:Ljava/lang/String; = "NextPage"

.field public static final PREV_PAGE:Ljava/lang/String; = "PrevPage"

.field public static final SCROLL_TO_PAGE:Ljava/lang/String; = "ScrollToPage"

.field public static final SEARCH_WITHIN_BOOK:Ljava/lang/String; = "SearchWithinBook"

.field public static final SELECT_CHAPTER:Ljava/lang/String; = "SelectChapter"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field
