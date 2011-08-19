.class public Lnet/yostore/aws/api/entity/BaseEntry;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# instance fields
.field private attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private createdtime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isBackup:Z

.field private isinfected:Z

.field private isorigdeleted:Z

.field private ispublic:Z

.field private lastchangetime:J

.field private marks:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private rawfilename:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute()Lnet/yostore/aws/api/entity/Attribute;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-object v0
.end method

.method public getCreatedtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->createdtime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isBackup:Z

    return v0
.end method

.method public getIsInfected()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isinfected:Z

    return v0
.end method

.method public getIsOrigdeleted()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isorigdeleted:Z

    return v0
.end method

.method public getIsPublic()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->ispublic:Z

    return v0
.end method

.method public getLastchangetime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->lastchangetime:J

    return-wide v0
.end method

.method public getMarks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->marks:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getRawfilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->rawfilename:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/BaseEntry;->size:J

    return-wide v0
.end method

.method public setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 108
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 109
    return-void
.end method

.method public setCreatedtime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdtime"

    .prologue
    .line 76
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->createdtime:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 68
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isBackup:Z

    .line 69
    return-void
.end method

.method public setIsinfected(Z)V
    .locals 0
    .parameter "isinfected"

    .prologue
    .line 116
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isinfected:Z

    .line 117
    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "isorigdeleted"

    .prologue
    .line 92
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->isorigdeleted:Z

    .line 93
    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "ispublic"

    .prologue
    .line 132
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->ispublic:Z

    .line 133
    return-void
.end method

.method public setLastchangetime(J)V
    .locals 0
    .parameter "lastchangetime"

    .prologue
    .line 84
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->lastchangetime:J

    .line 85
    return-void
.end method

.method public setMarks(Ljava/lang/String;)V
    .locals 0
    .parameter "marks"

    .prologue
    .line 100
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->marks:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 52
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->parent:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRawfilename(Ljava/lang/String;)V
    .locals 0
    .parameter "rawfilename"

    .prologue
    .line 60
    iput-object p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->rawfilename:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 124
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/BaseEntry;->size:J

    .line 125
    return-void
.end method
