.class Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
.super Ljava/lang/Object;
.source "XT9QwertyKeyListener.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/XT9QwertyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Replaced"
.end annotation


# instance fields
.field private mText:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0
    .parameter "text"

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;->mText:[C

    .line 503
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;)[C
    .locals 1
    .parameter "x0"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;->mText:[C

    return-object v0
.end method
