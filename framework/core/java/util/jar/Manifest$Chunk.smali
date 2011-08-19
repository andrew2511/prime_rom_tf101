.class Ljava/util/jar/Manifest$Chunk;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Chunk"
.end annotation


# instance fields
.field end:I

.field start:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Ljava/util/jar/Manifest$Chunk;->start:I

    .line 71
    iput p2, p0, Ljava/util/jar/Manifest$Chunk;->end:I

    .line 72
    return-void
.end method
