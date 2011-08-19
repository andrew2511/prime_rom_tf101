.class public interface abstract Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
.super Ljava/lang/Object;
.source "AbstractEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    }
.end annotation


# virtual methods
.method public abstract getCreated()J
.end method

.method public abstract getEntryFullTitle()Ljava/lang/String;
.end method

.method public abstract getEntryId()Ljava/lang/String;
.end method

.method public abstract getEntryTitle()Ljava/lang/String;
.end method

.method public abstract getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
.end method

.method public abstract getSize()J
.end method

.method public abstract getUpdated()J
.end method

.method public abstract isFolder()Z
.end method
