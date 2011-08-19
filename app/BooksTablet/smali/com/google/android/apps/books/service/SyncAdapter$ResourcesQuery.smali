.class interface abstract Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResourcesQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "resource_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
