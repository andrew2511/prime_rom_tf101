.class public Lnet/yostore/aws/api/entity/SharedEntry;
.super Ljava/lang/Object;
.source "SharedEntry.java"


# instance fields
.field private attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private createdtime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isBackup:Z

.field private isFolder:Z

.field private isinfected:Z

.field private isorigdeleted:Z

.field private ispublic:Z

.field private lastchangetime:J

.field private marks:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private rawentryname:Ljava/lang/String;

.field private sharingavailabletime:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute()Lnet/yostore/aws/api/entity/Attribute;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-object v0
.end method

.method public getCreatedtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->createdtime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isBackup:Z

    return v0
.end method

.method public getIsFolder()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isFolder:Z

    return v0
.end method

.method public getIsInfected()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isinfected:Z

    return v0
.end method

.method public getIsOrigdeleted()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isorigdeleted:Z

    return v0
.end method

.method public getIsPublic()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->ispublic:Z

    return v0
.end method

.method public getLastchangetime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->lastchangetime:J

    return-wide v0
.end method

.method public getMarks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->marks:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getRawentryname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->rawentryname:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingavailabletime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->sharingavailabletime:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/SharedEntry;->size:J

    return-wide v0
.end method

.method public setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 127
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 128
    return-void
.end method

.method public setCreatedtime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdtime"

    .prologue
    .line 95
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->createdtime:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 47
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 79
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isBackup:Z

    .line 80
    return-void
.end method

.method public setIsFolder(Z)V
    .locals 0
    .parameter "isFolder"

    .prologue
    .line 71
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isFolder:Z

    .line 72
    return-void
.end method

.method public setIsinfected(Z)V
    .locals 0
    .parameter "isinfected"

    .prologue
    .line 135
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isinfected:Z

    .line 136
    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "isorigdeleted"

    .prologue
    .line 111
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->isorigdeleted:Z

    .line 112
    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "ispublic"

    .prologue
    .line 151
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->ispublic:Z

    .line 152
    return-void
.end method

.method public setLastchangetime(J)V
    .locals 0
    .parameter "lastchangetime"

    .prologue
    .line 103
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->lastchangetime:J

    .line 104
    return-void
.end method

.method public setMarks(Ljava/lang/String;)V
    .locals 0
    .parameter "marks"

    .prologue
    .line 119
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->marks:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->parent:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRawentryname(Ljava/lang/String;)V
    .locals 0
    .parameter "rawentryname"

    .prologue
    .line 63
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->rawentryname:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSharingavailabletime(Ljava/lang/String;)V
    .locals 0
    .parameter "sharingavailabletime"

    .prologue
    .line 87
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->sharingavailabletime:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 143
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/SharedEntry;->size:J

    .line 144
    return-void
.end method
