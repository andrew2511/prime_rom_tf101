.class public abstract Lcom/android/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;,
        Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;,
        Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;,
        Lcom/android/emailcommon/mail/Folder$FolderRole;,
        Lcom/android/emailcommon/mail/Folder$FolderType;,
        Lcom/android/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
