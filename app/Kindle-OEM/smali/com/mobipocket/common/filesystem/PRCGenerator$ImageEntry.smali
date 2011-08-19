.class Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;
.super Ljava/lang/Object;
.source "PRCGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/filesystem/PRCGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEntry"
.end annotation


# instance fields
.field public bytes:[B

.field public positionsInHtml:Ljava/util/Vector;

.field public ressourceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobipocket/common/filesystem/PRCGenerator;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/filesystem/PRCGenerator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->this$0:Lcom/mobipocket/common/filesystem/PRCGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->ressourceName:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->bytes:[B

    .line 306
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;->positionsInHtml:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/filesystem/PRCGenerator;Lcom/mobipocket/common/filesystem/PRCGenerator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/mobipocket/common/filesystem/PRCGenerator$ImageEntry;-><init>(Lcom/mobipocket/common/filesystem/PRCGenerator;)V

    return-void
.end method
