.class public Lnet/yostore/aws/sqlite/entity/OOBE;
.super Ljava/lang/Object;
.source "OOBE.java"


# instance fields
.field private isfirsttouse:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "isfirsttouse"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    .line 12
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v2, 0x0

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    .line 24
    return-void
.end method


# virtual methods
.method public OOBE()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public getIsfirsttouse()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    return v0
.end method

.method public setIsfirsttouse(I)V
    .locals 0
    .parameter "isfirsttouse"

    .prologue
    .line 33
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isfirtimesttouse="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/yostore/aws/sqlite/entity/OOBE;->isfirsttouse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
