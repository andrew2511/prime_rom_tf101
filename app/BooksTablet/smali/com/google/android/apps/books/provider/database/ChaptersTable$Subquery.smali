.class interface abstract Lcom/google/android/apps/books/provider/database/ChaptersTable$Subquery;
.super Ljava/lang/Object;
.source "ChaptersTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/database/ChaptersTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Subquery"
.end annotation


# static fields
.field public static final ALL_PAGES_FORBIDDEN:Ljava/lang/String; = "CASE EXISTS (SELECT 1 FROM pages WHERE pages.volume_id=chapters.volume_id AND pages.first_chapter_id=chapters.chapter_id AND pages.content_status!=1) WHEN 1 THEN 0 ELSE 1 END"

.field public static final ALL_SECTIONS_FORBIDDEN:Ljava/lang/String; = "CASE EXISTS (SELECT 1 FROM sections WHERE sections.volume_id=chapters.volume_id AND sections.chapter_id=chapters.chapter_id AND sections.content_status!=1) WHEN 1 THEN 0 ELSE 1 END"

.field public static final ANY_PAGES_ALLOWED:Ljava/lang/String; = "EXISTS (SELECT 1 FROM pages WHERE pages.volume_id=chapters.volume_id AND pages.first_chapter_id=chapters.chapter_id AND pages.content_status!=1)"

.field public static final ANY_SECTIONS_ALLOWED:Ljava/lang/String; = "EXISTS (SELECT 1 FROM sections WHERE sections.volume_id=chapters.volume_id AND sections.chapter_id=chapters.chapter_id AND sections.content_status!=1)"

.field public static final START_PAGE_TITLE:Ljava/lang/String; = "SELECT pages.title FROM pages WHERE pages.volume_id=chapters.volume_id AND pages.page_id=chapters.start_page_id"
