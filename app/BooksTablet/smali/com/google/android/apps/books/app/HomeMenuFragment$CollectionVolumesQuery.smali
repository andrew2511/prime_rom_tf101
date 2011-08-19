.class interface abstract Lcom/google/android/apps/books/app/HomeMenuFragment$CollectionVolumesQuery;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CollectionVolumesQuery"
.end annotation


# static fields
.field public static final CREATOR:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TITLE:I = 0x2

.field public static final VOLUME_ID:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "creator"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/HomeMenuFragment$CollectionVolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
