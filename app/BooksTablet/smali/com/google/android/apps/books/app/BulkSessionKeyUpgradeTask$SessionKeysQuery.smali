.class interface abstract Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;
.super Ljava/lang/Object;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SessionKeysQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
