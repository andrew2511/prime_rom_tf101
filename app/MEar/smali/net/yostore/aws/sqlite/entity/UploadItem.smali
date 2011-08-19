.class public Lnet/yostore/aws/sqlite/entity/UploadItem;
.super Ljava/lang/Object;
.source "UploadItem.java"


# static fields
.field public static final UP_AUDI:I = 0x1

.field public static final UP_CAME:I = 0x0

.field public static final UP_FILE:I = 0x3

.field public static final UP_NOTE:I = 0x2

.field public static final UP_VIDEO:I = 0x4


# instance fields
.field public cloudid:J

.field public idx:J

.field public name:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field public size:J

.field public type:I

.field public uptype:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 14
    iput-object v3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 15
    iput-object v3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 16
    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 18
    const-wide/32 v0, -0x5f5e0ff

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->cloudid:J

    .line 19
    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 4
    .parameter "parent"
    .parameter "name"
    .parameter "type"
    .parameter "size"
    .parameter "uptype"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 14
    iput-object v3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 15
    iput-object v3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 16
    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 18
    const-wide/32 v0, -0x5f5e0ff

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->cloudid:J

    .line 19
    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 31
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 34
    iput-wide p4, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 35
    iput p6, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nparent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuptype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
