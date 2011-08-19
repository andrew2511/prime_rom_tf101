.class public Lcom/infraware/common/helpers/EvClipboardHelper;
.super Ljava/lang/Object;
.source "EvClipboardHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackupHtml:Ljava/lang/String;

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mBackupHtml:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mEvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 29
    iput-object p1, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mActivity:Landroid/app/Activity;

    .line 30
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 31
    return-void
.end method

.method public static bitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .parameter "bm"
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 105
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 108
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x55

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 117
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    const/4 v4, 0x1

    move-object v1, v2

    .line 122
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 109
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/FileNotFoundException;
    move v4, v6

    .line 110
    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    move v4, v6

    .line 122
    goto :goto_0
.end method

.method public static file2Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 134
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnEditCopyCut(ILjava/lang/String;)V
    .locals 1
    .parameter "nType"
    .parameter "data"

    .prologue
    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mBackupHtml:Ljava/lang/String;

    .line 142
    if-nez p2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 149
    iput-object p2, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mBackupHtml:Ljava/lang/String;

    .line 151
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/infraware/common/helpers/EvClipboardHelper;->setData(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v2, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 46
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 52
    .end local v1           #text:Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    .line 48
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, strText:Ljava/lang/String;
    move-object v2, v0

    .line 49
    goto :goto_0

    .end local v0           #strText:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    move-object v2, v3

    .line 52
    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(ILjava/lang/String;)V
    .locals 1
    .parameter "nType"
    .parameter "str"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    .line 74
    if-nez p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "cs"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/infraware/common/helpers/EvClipboardHelper;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method
