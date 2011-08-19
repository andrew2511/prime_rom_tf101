.class public Lnet/yostore/aws/handler/entity/MusicShortcut;
.super Ljava/lang/Object;
.source "MusicShortcut.java"


# instance fields
.field private attribute:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->display:Ljava/lang/String;

    .line 6
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->id:J

    .line 7
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->attribute:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->id:J

    return-wide v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 31
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->attribute:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 15
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->display:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/MusicShortcut;->id:J

    .line 24
    return-void
.end method
