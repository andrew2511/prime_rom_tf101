.class public Lcom/asus/dm/fota/GoogleUnpack;
.super Lcom/asus/dm/fota/UnPack;
.source "GoogleUnpack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleUnpack"


# instance fields
.field private mPackageFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pContext"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/asus/dm/fota/UnPack;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public bootToRecovery()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/fota/GoogleUnpack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/dm/fota/GoogleUnpack;->mPackageFile:Ljava/io/File;

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public do_unpack(Ljava/lang/String;)Lcom/asus/dm/fota/UnPack$ResultCode;
    .locals 5
    .parameter "packageFileName"

    .prologue
    .line 25
    sget-object v2, Lcom/asus/dm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/dm/fota/UnPack$ResultCode;

    .line 26
    .local v2, ret:Lcom/asus/dm/fota/UnPack$ResultCode;
    new-instance v1, Lcom/asus/dm/fota/GoogleUnpack$1;

    invoke-direct {v1, p0}, Lcom/asus/dm/fota/GoogleUnpack$1;-><init>(Lcom/asus/dm/fota/GoogleUnpack;)V

    .line 34
    .local v1, listener:Landroid/os/RecoverySystem$ProgressListener;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/dm/fota/GoogleUnpack;->mPackageFile:Ljava/io/File;

    .line 36
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/fota/GoogleUnpack;->mPackageFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    return-object v2

    .line 37
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 38
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    sget-object v2, Lcom/asus/dm/fota/UnPack$ResultCode;->DELTA_FILE_ERROR:Lcom/asus/dm/fota/UnPack$ResultCode;

    .line 43
    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 41
    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 42
    sget-object v2, Lcom/asus/dm/fota/UnPack$ResultCode;->SIGNATURE_ERROR:Lcom/asus/dm/fota/UnPack$ResultCode;

    goto :goto_0
.end method
