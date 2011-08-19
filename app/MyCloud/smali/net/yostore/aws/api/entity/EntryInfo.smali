.class public Lnet/yostore/aws/api/entity/EntryInfo;
.super Ljava/lang/Object;
.source "EntryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    }
.end annotation


# instance fields
.field private ancestorid:Ljava/lang/String;

.field private ancestorname:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isorigdeleted:Z

.field private ispublic:Z

.field private kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field private marks:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private rawentryname:Ljava/lang/String;

.field private rootFolder:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAncestorid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorid:Ljava/lang/String;

    return-object v0
.end method

.method public getAncestorname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsorigdeleted()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isorigdeleted:Z

    return v0
.end method

.method public getIspublic()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ispublic:Z

    return v0
.end method

.method public getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    return-object v0
.end method

.method public getMarks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->marks:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getRawentryname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rawentryname:Ljava/lang/String;

    return-object v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAncestorid(Ljava/lang/String;)V
    .locals 0
    .parameter "ancestorid"

    .prologue
    .line 80
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorid:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setAncestorname(Ljava/lang/String;)V
    .locals 0
    .parameter "ancestorname"

    .prologue
    .line 86
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorname:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "isorigdeleted"

    .prologue
    .line 62
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isorigdeleted:Z

    .line 63
    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "ispublic"

    .prologue
    .line 56
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ispublic:Z

    .line 57
    return-void
.end method

.method public setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 89
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 90
    return-void
.end method

.method public setMarks(Ljava/lang/String;)V
    .locals 0
    .parameter "marks"

    .prologue
    .line 74
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->marks:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 38
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->parent:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRawentryname(Ljava/lang/String;)V
    .locals 0
    .parameter "rawentryname"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rawentryname:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRootFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "rootFolder"

    .prologue
    .line 102
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rootFolder:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 68
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->score:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->time:Ljava/lang/String;

    .line 51
    return-void
.end method
