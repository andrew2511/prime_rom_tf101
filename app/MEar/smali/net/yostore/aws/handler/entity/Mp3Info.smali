.class public Lnet/yostore/aws/handler/entity/Mp3Info;
.super Ljava/lang/Object;
.source "Mp3Info.java"


# instance fields
.field private display:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileid:J

.field private fullDisplay:Ljava/lang/String;

.field private searchStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "fullDisplay"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->fullDisplay:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 44
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, mp3sc:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 46
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->fileid:J

    .line 47
    aget-object v1, v0, v3

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->display:Ljava/lang/String;

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 50
    aget-object v1, v0, v4

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->filePath:Ljava/lang/String;

    .line 53
    .end local v0           #mp3sc:[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileid()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->fileid:J

    return-wide v0
.end method

.method public getFullDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->fullDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Info;->searchStr:Ljava/lang/String;

    return-object v0
.end method
