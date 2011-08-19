.class public final Lcom/ecareme/pixwe/media/MenuBar$Menu;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Menu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    }
.end annotation


# static fields
.field private static final ICON_WIDTH:F = 45.0f


# instance fields
.field public final config:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field public final icon:I

.field private mWidth:I

.field public final onDeselect:Ljava/lang/Runnable;

.field public final onSelect:Ljava/lang/Runnable;

.field public final onSingleTapUp:Ljava/lang/Runnable;

.field public options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

.field public final resizeToAccomodate:Z

.field public final title:Ljava/lang/String;

.field public titleTexture:Lcom/ecareme/pixwe/media/StringTexture;

.field public titleWidth:I

.field private x:I


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleTexture:Lcom/ecareme/pixwe/media/StringTexture;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->titleWidth:I

    .line 508
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$0(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 509
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    .line 510
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->icon:I

    .line 511
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$3(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    .line 512
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    .line 513
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$5(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    .line 514
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$6(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 515
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->access$7(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->resizeToAccomodate:Z

    .line 516
    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;Lcom/ecareme/pixwe/media/MenuBar$Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;-><init>(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I
    .locals 1
    .parameter

    .prologue
    .line 448
    iget v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->x:I

    return v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu;)I
    .locals 1
    .parameter

    .prologue
    .line 449
    iget v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->mWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    iput p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->x:I

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->mWidth:I

    return-void
.end method


# virtual methods
.method public computeRequiredWidth()I
    .locals 3

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, width:I
    iget v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->icon:I

    if-eqz v1, :cond_0

    .line 521
    int-to-float v1, v0

    const/high16 v2, 0x4234

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-static {v1, v2}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidthForConfig(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 528
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_2

    .line 529
    const/16 v0, 0x2d

    .line 530
    :cond_2
    return v0
.end method
