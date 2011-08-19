.class public Lnet/yostore/aws/sqlite/entity/Song;
.super Ljava/lang/Object;
.source "Song.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/sqlite/entity/Song$TYPE;
    }
.end annotation


# instance fields
.field public display:Ljava/lang/String;

.field public mp3id:Ljava/lang/String;

.field public plistid:Ljava/lang/String;

.field public shortcutid:Ljava/lang/String;

.field public type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 30
    sget-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)V
    .locals 1
    .parameter "username"
    .parameter "plistid"
    .parameter "mp3id"
    .parameter "shortcutid"
    .parameter "display"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 30
    sget-object v0, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 42
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 50
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
