.class public interface abstract Lcom/asus/dmlib/vdm/PLStorage;
.super Ljava/lang/Object;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/PLStorage$AccessMode;,
        Lcom/asus/dmlib/vdm/PLStorage$ItemType;
    }
.end annotation


# virtual methods
.method public abstract delete(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)V
.end method

.method public abstract getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
.end method

.method public abstract getFullName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;
.end method

.method public abstract openInputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openkeyStore()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
