.class public interface abstract Lcom/google/android/apps/books/model/VolumeMetadata$SectionsQuery;
.super Ljava/lang/Object;
.source "VolumeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/VolumeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SectionsQuery"
.end annotation


# static fields
.field public static final CHAPTER_ID:I = 0x2

.field public static final CONTENT_STATUS:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SECTION_ID:I = 0x1

.field public static final START_POSITION:I = 0x4

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 855
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "chapter_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content_status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/VolumeMetadata$SectionsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
