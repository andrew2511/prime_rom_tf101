.class public Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;
.super Landroid/app/Activity;
.source "PhotoAppWidgetClickHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isValidDataUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "dataUri"

    .prologue
    const/4 v5, 0x0

    .line 34
    if-nez p1, :cond_0

    move v2, v5

    .line 42
    :goto_0
    return v2

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 38
    .local v1, f:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    .end local v1           #f:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "PhotoAppWidgetClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v5

    .line 42
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->isValidDataUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->startActivity(Landroid/content/Intent;)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->finish()V

    .line 58
    return-void

    .line 53
    :cond_0
    const v0, 0x7f080024

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
