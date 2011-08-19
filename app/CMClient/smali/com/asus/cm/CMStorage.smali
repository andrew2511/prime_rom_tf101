.class public Lcom/asus/cm/CMStorage;
.super Ljava/lang/Object;
.source "CMStorage.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/PLStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/CMStorage$1;
    }
.end annotation


# static fields
.field public static final DLELTA_FILENAME:Ljava/lang/String; = "dlpkgfile"

.field public static final DLRESUME_FILENAME:Ljava/lang/String; = "dlresume.dat"

.field public static final DMTREE_FILENAME:Ljava/lang/String; = "tree.xml"

.field public static final TEMP_DMTREE_FILENAME:Ljava/lang/String; = "tmp_tree.xml"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pContext"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public delete(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)V
    .locals 2
    .parameter "pType"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/asus/cm/CMStorage;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 47
    return-void
.end method

.method public getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
    .locals 2
    .parameter "pType"

    .prologue
    .line 32
    sget-object v0, Lcom/asus/cm/CMStorage$1;->$SwitchMap$com$asus$dmlib$vdm$PLStorage$ItemType:[I

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    const-string v0, "tree.xml"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "tmp_tree.xml"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "dlresume.dat"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "dlpkgfile"

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFullName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
    .locals 5
    .parameter "pType"

    .prologue
    .line 26
    iget-object v2, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, f:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/asus/cm/CMStorage;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public openInputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/io/FileInputStream;
    .locals 3
    .parameter "paramItemType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoke openInputStraem() of DMStorage....."

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/asus/cm/CMStorage;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    return-object v1
.end method

.method public openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;
    .locals 4
    .parameter "paramItemType"
    .parameter "pAccessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invoke openInputStraem() of DMStorage....."

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/asus/cm/CMStorage;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, filename:Ljava/lang/String;
    sget-object v2, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->APPEND:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    if-ne p2, v2, :cond_0

    const v2, 0x8000

    move v0, v2

    .line 68
    .local v0, accessMode:I
    :goto_0
    iget-object v2, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    return-object v2

    .line 65
    .end local v0           #accessMode:I
    :cond_0
    sget-object v2, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    if-ne p2, v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public openkeyStore()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/cm/CMStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
