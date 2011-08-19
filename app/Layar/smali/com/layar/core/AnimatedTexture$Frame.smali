.class public Lcom/layar/core/AnimatedTexture$Frame;
.super Ljava/lang/Object;
.source "AnimatedTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/AnimatedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Frame"
.end annotation


# instance fields
.field delay:I

.field image:[B

.field offsetTime:J

.field final synthetic this$0:Lcom/layar/core/AnimatedTexture;


# direct methods
.method public constructor <init>(Lcom/layar/core/AnimatedTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/layar/core/AnimatedTexture$Frame;->this$0:Lcom/layar/core/AnimatedTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
