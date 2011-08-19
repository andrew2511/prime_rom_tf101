.class interface abstract Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PagesQuery"
.end annotation


# static fields
.field public static final PAGE_ID:I = 0x0

.field public static final PAGE_ORDER:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
