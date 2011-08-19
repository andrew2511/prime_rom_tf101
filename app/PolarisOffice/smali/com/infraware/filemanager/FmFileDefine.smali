.class public Lcom/infraware/filemanager/FmFileDefine;
.super Ljava/lang/Object;
.source "FmFileDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmFileDefine$AdapterMode;,
        Lcom/infraware/filemanager/FmFileDefine$ExternalStorageType;,
        Lcom/infraware/filemanager/FmFileDefine$FileOperation;,
        Lcom/infraware/filemanager/FmFileDefine$FileOperationMode;,
        Lcom/infraware/filemanager/FmFileDefine$FileType;,
        Lcom/infraware/filemanager/FmFileDefine$FilterType;,
        Lcom/infraware/filemanager/FmFileDefine$Operation;,
        Lcom/infraware/filemanager/FmFileDefine$OperationResult;,
        Lcom/infraware/filemanager/FmFileDefine$Request;,
        Lcom/infraware/filemanager/FmFileDefine$Result;,
        Lcom/infraware/filemanager/FmFileDefine$Sort;,
        Lcom/infraware/filemanager/FmFileDefine$Type;,
        Lcom/infraware/filemanager/FmFileDefine$UIUpdateHandlerState;,
        Lcom/infraware/filemanager/FmFileDefine$webhardResult;
    }
.end annotation


# static fields
.field public static final ASUS_EXTERNAL_STORAGE_COUNT:I = 0x4

.field public static ASUS_MICROSD_PATH:Ljava/lang/String; = null

.field public static final ASUS_SD_PATH:Ljava/lang/String; = "/Removable/SD/"

.field public static final ASUS_USB1_PATH:Ljava/lang/String; = "/Removable/USBdisk1/"

.field public static final ASUS_USB2_PATH:Ljava/lang/String; = "/Removable/USBdisk2/"

.field public static final BOXNET_ACCOUNT_PREFERENCE:Ljava/lang/String; = "boxnet_account"

.field public static final DEFAULT_NEW_FILE_NAME:Ljava/lang/String; = "Untitled"

.field public static final EMPTY_DATE_FORMAT:Ljava/lang/String; = "----/--/--"

.field public static final EULA_FILE_NAME:Ljava/lang/String; = "EULA.txt"

.field public static final GOOGLE_ACCOUNT_PREFERENCE:Ljava/lang/String; = "google_account"

.field public static final NETWORK_CALLBACK_CANCEL:I = 0x3

.field public static final NETWORK_CALLBACK_FAIL:I = 0x2

.field public static final NETWORK_CALLBACK_SUCCESS:I = 0x1

.field public static final RECENT_FILE_PREFERENCE:Ljava/lang/String; = "recent_files"

.field public static ROOT_FILE_MANAGER_PATH:Ljava/lang/String; = null

.field public static final UNZIP_TEMP_PATH:Ljava/lang/String; = null

.field public static final UPPER_FOLDER_PATH:Ljava/lang/String; = ".."

.field public static final USER_REGISTRATION_PREFERENCE:Ljava/lang/String; = "user_registration"

.field public static final WEB_ROOT_PATH:Ljava/lang/String; = "/"

.field public static final WEB_TEMP_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->ROOT_FILE_MANAGER_PATH:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->UNZIP_TEMP_PATH:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".temp_web/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->WEB_TEMP_PATH:Ljava/lang/String;

    .line 28
    const-string v0, "/Removable/MicroSD/"

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->ASUS_MICROSD_PATH:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMicroSD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "EP71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "/data/Removable/MicroSD/"

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->ASUS_MICROSD_PATH:Ljava/lang/String;

    .line 46
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileDefine;->ASUS_MICROSD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperationMode(I)I
    .locals 1
    .parameter "a_nOperation"

    .prologue
    .line 217
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static final getRootFileManagerPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "EP71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "/data/media/"

    sput-object v0, Lcom/infraware/filemanager/FmFileDefine;->ROOT_FILE_MANAGER_PATH:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/infraware/filemanager/FmFileDefine;->ROOT_FILE_MANAGER_PATH:Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/infraware/filemanager/FmFileDefine;->ROOT_FILE_MANAGER_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
