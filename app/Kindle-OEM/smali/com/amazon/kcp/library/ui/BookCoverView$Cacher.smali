.class Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;
.super Ljava/lang/Object;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cacher"
.end annotation


# static fields
.field private static cached:Z

.field private static dimCover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->cached:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static shouldDimCover(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "resources"

    .prologue
    .line 599
    sget-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->cached:Z

    if-eqz v0, :cond_0

    .line 601
    sget-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->dimCover:Z

    .line 606
    :goto_0
    return v0

    .line 604
    :cond_0
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->dimCover:Z

    .line 605
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->cached:Z

    .line 606
    sget-boolean v0, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->dimCover:Z

    goto :goto_0
.end method
