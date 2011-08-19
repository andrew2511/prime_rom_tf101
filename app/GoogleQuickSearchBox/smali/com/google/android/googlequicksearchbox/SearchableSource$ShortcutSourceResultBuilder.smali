.class final Lcom/google/android/googlequicksearchbox/SearchableSource$ShortcutSourceResultBuilder;
.super Lcom/google/android/googlequicksearchbox/SourceResultBuilder;
.source "SearchableSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortcutSourceResultBuilder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .parameter "source"
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 464
    return-void
.end method


# virtual methods
.method public isShortcut()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method
