.class Lcom/layar/core/Layar3DModel$Face;
.super Ljava/lang/Object;
.source "Layar3DModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/Layar3DModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Face"
.end annotation


# instance fields
.field n:[I

.field t:[I

.field v:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Face;->v:[I

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Face;->t:[I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Face;->n:[I

    .line 29
    return-void
.end method
