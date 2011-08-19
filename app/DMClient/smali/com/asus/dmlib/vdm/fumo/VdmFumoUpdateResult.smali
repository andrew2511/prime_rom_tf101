.class public Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
.super Ljava/lang/Object;
.source "VdmFumoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VdmFumoUpdateResult"


# instance fields
.field private fumoResult:I

.field private isSynchronousUpdate:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;Z)V
    .locals 3
    .parameter "result"
    .parameter "isSyncUpdate"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "VdmFumoUpdateResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultCode == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getRsltCode()I

    move-result v0

    iput v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->fumoResult:I

    .line 18
    iput-boolean p2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->isSynchronousUpdate:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getSynchronousUpdate()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->isSynchronousUpdate:Z

    return v0
.end method

.method public getfumoResult()Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->values()[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 28
    .local v3, rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getRsltCode()I

    move-result v4

    iget v5, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->fumoResult:I

    if-ne v4, v5, :cond_0

    .line 29
    const-string v4, "VdmFumoUpdateResult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3           #rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_1
    new-instance v4, Lcom/asus/dmlib/vdm/VdmException;

    const-string v5, "ResultCode not in list"

    invoke-direct {v4, v5}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
