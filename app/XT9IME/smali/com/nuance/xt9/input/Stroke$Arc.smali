.class public Lcom/nuance/xt9/input/Stroke$Arc;
.super Ljava/lang/Object;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arc"
.end annotation


# instance fields
.field public mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    .line 242
    return-void
.end method


# virtual methods
.method public addPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    return-void
.end method
