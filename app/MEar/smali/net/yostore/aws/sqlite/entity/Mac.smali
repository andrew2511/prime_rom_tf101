.class public Lnet/yostore/aws/sqlite/entity/Mac;
.super Ljava/lang/Object;
.source "Mac.java"


# instance fields
.field private macaddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "macaddr"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Mac;->macaddr:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/Mac;->macaddr:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public Mac()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Macaddr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/Mac;->macaddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
