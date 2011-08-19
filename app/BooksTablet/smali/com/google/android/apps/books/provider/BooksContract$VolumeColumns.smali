.class interface abstract Lcom/google/android/apps/books/provider/BooksContract$VolumeColumns;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$BaseVolumeColumns;
.implements Lcom/google/android/apps/books/provider/BooksContract$VolumeJoinColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VolumeColumns"
.end annotation


# static fields
.field public static final ETAG_VERSION:Ljava/lang/String; = "version"

.field public static final MAX_COLLECTION_VOLUMES_TIMESTAMP:Ljava/lang/String; = "max_collection_volumes_timestamp"

.field public static final MAX_LAST_LOCAL_ACCESS:Ljava/lang/String; = "max_last_local_access"

.field public static final PINNED:Ljava/lang/String; = "pinned"
