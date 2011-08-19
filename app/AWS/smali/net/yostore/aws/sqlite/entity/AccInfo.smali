.class public Lnet/yostore/aws/sqlite/entity/AccInfo;
.super Ljava/lang/Object;
.source "AccInfo.java"


# instance fields
.field public browseSortByDesc:I

.field public browsesort:I

.field public encryptPwd:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public sgw:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 11
    iput v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    .line 12
    iput v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 11
    iput v3, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    .line 12
    iput v3, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 19
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 20
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 21
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 22
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    .line 23
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "pwd"
    .parameter "sgw"
    .parameter "encryptPwd"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 11
    iput v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    .line 12
    iput v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    .line 27
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 30
    if-eqz p4, :cond_0

    .line 31
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsgw="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
