.class public Lnet/yostore/aws/sqlite/entity/DlQueue;
.super Ljava/lang/Object;
.source "DlQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;
    }
.end annotation


# instance fields
.field public message:I

.field public mp3id:Ljava/lang/String;

.field public plistid:Ljava/lang/String;

.field public status:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->username:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    .line 42
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->status:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->message:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)V
    .locals 1
    .parameter "username"
    .parameter "plistid"
    .parameter "mp3id"
    .parameter "status"
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->username:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    .line 42
    sget-object v0, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->status:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->message:I

    .line 52
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->username:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->status:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 56
    iput p5, p0, Lnet/yostore/aws/sqlite/entity/DlQueue;->message:I

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
