.class public Lcom/infraware/filemanager/FmExternalStorageHelper;
.super Ljava/lang/Object;
.source "FmExternalStorageHelper.java"


# static fields
.field private static m_strEnableExternStorageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmExternalStorageHelper;->m_strEnableExternStorageList:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExternalStorage(I)Z
    .locals 3
    .parameter "a_nIndex"

    .prologue
    const/4 v2, 0x1

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, oExternalStorage:Ljava/io/File;
    if-nez p0, :cond_1

    .line 48
    new-instance v0, Ljava/io/File;

    .end local v0           #oExternalStorage:Ljava/io/File;
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getMicroSD()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v0       #oExternalStorage:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 57
    :goto_1
    return v1

    .line 49
    :cond_1
    if-ne p0, v2, :cond_2

    .line 50
    new-instance v0, Ljava/io/File;

    .end local v0           #oExternalStorage:Ljava/io/File;
    const-string v1, "/Removable/USBdisk1/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #oExternalStorage:Ljava/io/File;
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 52
    new-instance v0, Ljava/io/File;

    .end local v0           #oExternalStorage:Ljava/io/File;
    const-string v1, "/Removable/USBdisk2/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #oExternalStorage:Ljava/io/File;
    goto :goto_0

    .line 53
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/io/File;

    .end local v0           #oExternalStorage:Ljava/io/File;
    const-string v1, "/Removable/SD/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #oExternalStorage:Ljava/io/File;
    goto :goto_0

    .line 57
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static clearEnableExternalStorageList()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/infraware/filemanager/FmExternalStorageHelper;->m_strEnableExternStorageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    return-void
.end method

.method public static getEnableExternalStorageCount()I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/infraware/filemanager/FmExternalStorageHelper;->m_strEnableExternStorageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getEnableExternalStorageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/infraware/filemanager/FmExternalStorageHelper;->m_strEnableExternStorageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getExternalStorageIndex(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_strExternalStorage"

    .prologue
    .line 102
    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 104
    :cond_0
    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 108
    :cond_2
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x3

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getExternalStorageIndexByPath(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strExternalStoragePath"

    .prologue
    .line 116
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getMicroSD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v0, "/Removable/USBdisk1/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "/Removable/USBdisk2/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x2

    goto :goto_0

    .line 122
    :cond_2
    const-string v0, "/Removable/SD/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const/4 v0, 0x3

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getExternalStoragePath(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getMicroSD()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 65
    const-string v0, "/Removable/USBdisk1/"

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 67
    const-string v0, "/Removable/USBdisk2/"

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 69
    const-string v0, "/Removable/SD/"

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalStoragePath(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_strExternalStorage"

    .prologue
    .line 75
    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getMicroSD()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "/Removable/USBdisk1/"

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "/Removable/USBdisk2/"

    goto :goto_0

    .line 81
    :cond_2
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "/Removable/SD/"

    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalStorageString(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    const v0, 0x7f0a038d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 93
    const v0, 0x7f0a038e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 95
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateEnableExternalStorageList(Landroid/app/Activity;)V
    .locals 3
    .parameter "a_oActivity"

    .prologue
    .line 33
    sget-object v2, Lcom/infraware/filemanager/FmExternalStorageHelper;->m_strEnableExternStorageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 34
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 41
    return-void

    .line 35
    :cond_0
    invoke-static {v0}, Lcom/infraware/filemanager/FmExternalStorageHelper;->checkExternalStorage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-static {p0, v0}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStorageString(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, strExternalStorage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getEnableExternalStorageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v1           #strExternalStorage:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
