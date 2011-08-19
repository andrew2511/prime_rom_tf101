.class public Lcom/asus/filemanager/edit/EditResult;
.super Ljava/lang/Object;
.source "EditResult.java"


# instance fields
.field public ECODE:I

.field public numFiles:I

.field public numFolders:I

.field public numbytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/asus/filemanager/edit/EditResult;->ECODE:I

    .line 16
    iput v0, p0, Lcom/asus/filemanager/edit/EditResult;->numFiles:I

    .line 17
    iput v0, p0, Lcom/asus/filemanager/edit/EditResult;->numFolders:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/filemanager/edit/EditResult;->numbytes:J

    return-void
.end method
