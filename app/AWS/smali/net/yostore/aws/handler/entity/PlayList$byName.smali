.class Lnet/yostore/aws/handler/entity/PlayList$byName;
.super Ljava/lang/Object;
.source "PlayList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/entity/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "byName"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/handler/entity/PlayList;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/handler/entity/PlayList;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/PlayList$byName;->this$0:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/handler/entity/PlayList;Lnet/yostore/aws/handler/entity/PlayList$byName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lnet/yostore/aws/handler/entity/PlayList$byName;-><init>(Lnet/yostore/aws/handler/entity/PlayList;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "boy"
    .parameter "girl"

    .prologue
    .line 181
    check-cast p1, Lnet/yostore/aws/handler/entity/PlayItem;

    .end local p1
    iget-object v1, p1, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    check-cast p2, Lnet/yostore/aws/handler/entity/PlayItem;

    .end local p2
    iget-object v2, p2, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, sdif:I
    return v0
.end method
