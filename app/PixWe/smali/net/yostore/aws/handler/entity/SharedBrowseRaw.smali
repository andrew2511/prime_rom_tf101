.class public Lnet/yostore/aws/handler/entity/SharedBrowseRaw;
.super Ljava/lang/Object;
.source "SharedBrowseRaw.java"


# instance fields
.field private fid:Ljava/lang/String;

.field private icon:I

.field private kind:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->icon:I

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->size:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->kind:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->fid:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "icon"
    .parameter "size"
    .parameter "kind"
    .parameter "fid"

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->icon:I

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->size:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->kind:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->fid:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->text:Ljava/lang/String;

    .line 14
    iput p2, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->icon:I

    .line 16
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->size:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p4}, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->setKind(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p5}, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->setFid(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->icon:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0
    .parameter "fid"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->fid:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 32
    iput p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->icon:I

    .line 33
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 47
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->kind:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->size:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 26
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/SharedBrowseRaw;->text:Ljava/lang/String;

    .line 27
    return-void
.end method
