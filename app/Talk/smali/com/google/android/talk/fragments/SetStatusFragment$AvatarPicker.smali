.class public Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvatarPicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mFragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/os/Bundle;Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "icicle"
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    .line 1028
    iput-object p4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mFragment:Landroid/app/Fragment;

    .line 1030
    invoke-virtual {p0, p2}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1031
    return-void
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1135
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1136
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cropPhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1146
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1153
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1154
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mFragment:Landroid/app/Fragment;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1156
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "talk"

    const-string v3, "Cannot crop image"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c00f0

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doPickPhotoFromGallery()V
    .locals 5

    .prologue
    .line 1167
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/fragments/SetStatusFragment;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1168
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mFragment:Landroid/app/Fragment;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1170
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c00f0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doTakePhoto()V
    .locals 5

    .prologue
    .line 1121
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$3200()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1122
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$3200()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->getPhotoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    .line 1123
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 1125
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mFragment:Landroid/app/Fragment;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1127
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c00f0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1043
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    .line 1046
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 1049
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;Landroid/app/Activity;)V

    .line 1050
    .local v0, dialog:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "pickphoto"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1051
    return-void
.end method
