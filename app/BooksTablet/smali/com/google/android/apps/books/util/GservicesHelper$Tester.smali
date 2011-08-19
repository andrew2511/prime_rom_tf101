.class final Lcom/google/android/apps/books/util/GservicesHelper$Tester;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/GservicesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tester"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mResolver:Landroid/content/ContentResolver;

    .line 167
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->access$200(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->access$100(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->access$000(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
