.class interface abstract Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SessionKeyQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SESSION_KEY_BLOB:I = 0x2

.field public static final SESSION_KEY_VERSION:I = 0x1

.field public static final VOLUME_ID:I = 0x3

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "session_key_version"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "session_key_blob"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
