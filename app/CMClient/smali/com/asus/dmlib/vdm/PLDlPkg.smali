.class public interface abstract Lcom/asus/dmlib/vdm/PLDlPkg;
.super Ljava/lang/Object;
.source "PLDlPkg.java"


# virtual methods
.method public abstract getFilename(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract writeChunk(Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation
.end method
