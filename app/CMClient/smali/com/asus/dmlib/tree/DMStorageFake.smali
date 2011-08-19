.class public Lcom/asus/dmlib/tree/DMStorageFake;
.super Ljava/lang/Object;
.source "DMStorageFake.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/PLStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/tree/DMStorageFake$1;
    }
.end annotation


# static fields
.field public static final DLRESUME_FILENAME:Ljava/lang/String; = "dlresume.dat"

.field public static final DMTREE_FILENAME:Ljava/lang/String; = "/home/hugh/Desktop/tree.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public delete(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)V
    .locals 0
    .parameter "paramItemType"

    .prologue
    .line 45
    return-void
.end method

.method public getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
    .locals 2
    .parameter "pType"

    .prologue
    .line 21
    sget-object v0, Lcom/asus/dmlib/tree/DMStorageFake$1;->$SwitchMap$com$asus$dmlib$vdm$PLStorage$ItemType:[I

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    const-string v0, "/home/hugh/Desktop/tree.xml"

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    const-string v0, "dlresume.dat"

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getFullName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
    .locals 1
    .parameter "pType"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/tree/DMStorageFake;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "paramItemType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/tree/DMStorageFake;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;
    .locals 2
    .parameter "paramItemType"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/asus/dmlib/tree/DMStorageFake;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public openkeyStore()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
