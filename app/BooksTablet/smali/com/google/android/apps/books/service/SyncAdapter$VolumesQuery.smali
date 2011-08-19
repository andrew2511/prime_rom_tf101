.class interface abstract Lcom/google/android/apps/books/service/SyncAdapter$VolumesQuery;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VolumesQuery"
.end annotation


# static fields
.field public static final HAS_IMAGE_MODE:I = 0x1

.field public static final HAS_TEXT_MODE:I = 0x2

.field public static final PREFERRED_MODE:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TITLE:I = 0x4

.field public static final VOLUME_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1173
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "has_image_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_text_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "preferred_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/service/SyncAdapter$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
