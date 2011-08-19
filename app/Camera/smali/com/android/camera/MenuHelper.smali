.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "switchToVideo"
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 98
    if-eqz p1, :cond_0

    const v3, 0x7f0b007d

    move v2, v3

    .line 101
    .local v2, labelId:I
    :goto_0
    if-eqz p1, :cond_1

    const v3, 0x7f020052

    move v0, v3

    .line 104
    .local v0, iconId:I
    :goto_1
    const/4 v3, 0x1

    invoke-interface {p0, v4, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/camera/MenuHelper$2;

    invoke-direct {v4, p2}, Lcom/android/camera/MenuHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 112
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    return-void

    .line 98
    .end local v0           #iconId:I
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #labelId:I
    :cond_0
    const v3, 0x7f0b007c

    move v2, v3

    goto :goto_0

    .line 101
    .restart local v2       #labelId:I
    :cond_1
    const v3, 0x1080037

    move v0, v3

    goto :goto_1
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/MenuHelper$1;

    invoke-direct {v0, p3}, Lcom/android/camera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 86
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void
.end method

.method public static gotoCameraImageGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 153
    const v0, 0x7f0b0004

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 154
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.camera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 149
    const-string v0, "com.android.camera.Camera"

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 157
    const v0, 0x7f0b0005

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 158
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 162
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    sget-object v5, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 164
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.camera.VideoCamera"

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 145
    const-string v0, "com.android.camera.VideoCamera"

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 117
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
