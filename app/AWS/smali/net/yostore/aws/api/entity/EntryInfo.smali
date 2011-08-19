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

.field private attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private id:Ljava/lang/String;

.field private isBackup:Z

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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAncestorid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorid:Ljava/lang/String;

    return-object v0
.end method

.method public getAncestorname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorname:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute()Lnet/yostore/aws/api/entity/Attribute;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isBackup:Z

    return v0
.end method

.method public getIsorigdeleted()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isorigdeleted:Z

    return v0
.end method

.method public getIspublic()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ispublic:Z

    return v0
.end method

.method public getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    return-object v0
.end method

.method public getMarks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->marks:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getRawentryname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rawentryname:Ljava/lang/String;

    return-object v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/yostore/aws/api/entity/EntryInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAncestorid(Ljava/lang/String;)V
    .locals 0
    .parameter "ancestorid"

    .prologue
    .line 114
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setAncestorname(Ljava/lang/String;)V
    .locals 0
    .parameter "ancestorname"

    .prologue
    .line 120
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ancestorname:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 153
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 154
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 66
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->id:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 145
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isBackup:Z

    .line 146
    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "isorigdeleted"

    .prologue
    .line 96
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->isorigdeleted:Z

    .line 97
    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "ispublic"

    .prologue
    .line 90
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->ispublic:Z

    .line 91
    return-void
.end method

.method public setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 123
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 124
    return-void
.end method

.method public setMarks(Ljava/lang/String;)V
    .locals 0
    .parameter "marks"

    .prologue
    .line 108
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->marks:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 72
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->parent:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setRawentryname(Ljava/lang/String;)V
    .locals 0
    .parameter "rawentryname"

    .prologue
    .line 78
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rawentryname:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRootFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "rootFolder"

    .prologue
    .line 136
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->rootFolder:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 102
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->score:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 84
    iput-object p1, p0, Lnet/yostore/aws/api/entity/EntryInfo;->time:Ljava/lang/String;

    .line 85
    return-void
.end method
