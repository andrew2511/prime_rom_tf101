.class Lcom/android/launcher2/LiveFolderInfo;
.super Lcom/android/launcher2/FolderInfo;
.source "LiveFolderInfo.java"


# instance fields
.field baseIntent:Landroid/content/Intent;

.field displayMode:I

.field icon:Landroid/graphics/Bitmap;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/LiveFolderInfo;->itemType:I

    .line 53
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/launcher2/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 58
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v0, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v0, "displayMode"

    iget v1, p0, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void
.end method
