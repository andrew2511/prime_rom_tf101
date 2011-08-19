.class public Lcom/android/certinstaller/CertFile;
.super Landroid/preference/PreferenceActivity;
.source "CertFile.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private mCertFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private install(Ljava/lang/String;[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, ".p12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 190
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertFile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void

    .line 188
    :cond_0
    const-string v1, "CERT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method

.method private toastError(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAllCertFiles()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v8, allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 106
    .local v11, root:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v12, Landroid/os/Environment;->MOUNT_POINT_MICROSD:Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, EPAD_MicroSD:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    sget-object v12, Landroid/os/Environment;->MOUNT_POINT_USBDISK1:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, EPAD_UsbDisk1:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    sget-object v12, Landroid/os/Environment;->MOUNT_POINT_USBDISK2:Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, EPAD_UsbDisk2:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v12, Landroid/os/Environment;->MOUNT_POINT_SDREADER:Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, EPAD_SDREADER:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v12, "download"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v9, download:Ljava/io/File;
    if-eqz v9, :cond_0

    .line 113
    invoke-virtual {v9, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 114
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-static {v8, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    .end local v10           #files:[Ljava/io/File;
    :cond_0
    invoke-virtual {v11, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 118
    .restart local v10       #files:[Ljava/io/File;
    if-eqz v10, :cond_1

    invoke-static {v8, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 121
    .local v1, EPAD_MicroSD_files:[Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-static {v8, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 123
    :cond_2
    invoke-virtual {v4, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 124
    .local v5, EPAD_UsbDisk1_files:[Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-static {v8, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    :cond_3
    invoke-virtual {v6, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    .line 127
    .local v7, EPAD_UsbDisk2_files:[Ljava/io/File;
    if-eqz v7, :cond_4

    invoke-static {v8, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 129
    :cond_4
    invoke-virtual {v2, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 130
    .local v3, EPAD_SDREADER_files:[Ljava/io/File;
    if-eqz v3, :cond_5

    invoke-static {v8, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 132
    :cond_5
    return-object v8
.end method

.method protected installFromFile(Ljava/io/File;)V
    .locals 7
    .parameter "file"

    .prologue
    const v6, 0x7f04001d

    const v4, 0x7f04001c

    const v5, 0x7f04001b

    .line 141
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install cert from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 145
    invoke-static {p1}, Lcom/android/certinstaller/Util;->readFile(Ljava/io/File;)[B

    move-result-object v0

    .line 146
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, v6}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 148
    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CertFile;->onError(I)V

    .line 163
    .end local v0           #data:[B
    :goto_0
    return-void

    .line 151
    .restart local v0       #data:[B
    :cond_0
    iput-object p1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/certinstaller/CertFile;->install(Ljava/lang/String;[B)V

    goto :goto_0

    .line 154
    .end local v0           #data:[B
    :cond_1
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert file is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v5}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, "CertFile"

    const-string v2, "cert file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, v4}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_0
.end method

.method protected isFileAcceptable(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 174
    const-string v0, ".p12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".crt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".cer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSdCardPresent()Z
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 72
    if-ne p1, v1, :cond_1

    .line 73
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/certinstaller/Util;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 79
    :goto_1
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "CertFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onError(I)V
    .locals 0
    .parameter "errorId"

    .prologue
    .line 96
    return-void
.end method

.method protected onInstallationDone(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 87
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedStates"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    const-string v1, "cf"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 68
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "cf"

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
