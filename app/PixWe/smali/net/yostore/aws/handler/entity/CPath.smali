.class public Lnet/yostore/aws/handler/entity/CPath;
.super Ljava/lang/Object;
.source "CPath.java"


# instance fields
.field public disp:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "disp"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    .line 8
    return-void
.end method
