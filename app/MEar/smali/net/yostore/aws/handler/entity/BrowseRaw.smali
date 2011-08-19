.class public Lnet/yostore/aws/handler/entity/BrowseRaw;
.super Ljava/lang/Object;
.source "BrowseRaw.java"


# instance fields
.field private fid:Ljava/lang/String;

.field private fileRoot:J

.field private icon:I

.field private kind:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 6
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "text"
    .parameter "icon"
    .parameter "kind"
    .parameter "fid"
    .parameter "fileRoot"

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 6
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 12
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 13
    iput p2, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 14
    iput-object p4, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 16
    iput-wide p5, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "kind"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 6
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 26
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "kind"
    .parameter "fid"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 6
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileRoot()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    return-wide v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0
    .parameter "fid"

    .prologue
    .line 52
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFileRoot(J)V
    .locals 0
    .parameter "fileRoot"

    .prologue
    .line 63
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->fileRoot:J

    .line 64
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 43
    iput p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->icon:I

    .line 44
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 46
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->kind:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/BrowseRaw;->text:Ljava/lang/String;

    .line 38
    return-void
.end method
