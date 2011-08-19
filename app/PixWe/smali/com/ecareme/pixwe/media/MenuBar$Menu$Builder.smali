.class public final Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/MenuBar$Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private icon:I

.field private onDeselect:Ljava/lang/Runnable;

.field private onSelect:Ljava/lang/Runnable;

.field private onSingleTapUp:Ljava/lang/Runnable;

.field private options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

.field private resizeToAccomodate:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon:I

    .line 456
    iput-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    .line 457
    iput-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;

    .line 458
    iput-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    .line 459
    iput-object v1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 463
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->title:Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/ecareme/pixwe/media/MenuBar;->access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 465
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Lcom/ecareme/pixwe/media/StringTexture$Config;
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 455
    iget v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon:I

    return v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .locals 1
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->resizeToAccomodate:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/ecareme/pixwe/media/MenuBar$Menu;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Lcom/ecareme/pixwe/media/MenuBar$Menu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ecareme/pixwe/media/MenuBar$Menu;-><init>(Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;Lcom/ecareme/pixwe/media/MenuBar$Menu;)V

    return-object v0
.end method

.method public config(Lcom/ecareme/pixwe/media/StringTexture$Config;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "config"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->config:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 469
    return-object p0
.end method

.method public icon(I)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 478
    iput p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->icon:I

    .line 479
    return-object p0
.end method

.method public onDeselect(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "onDeselect"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;

    .line 489
    return-object p0
.end method

.method public onSelect(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "onSelect"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    .line 484
    return-object p0
.end method

.method public onSingleTapUp(Ljava/lang/Runnable;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "onSingleTapUp"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    .line 494
    return-object p0
.end method

.method public options([Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 0
    .parameter "options"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 499
    return-object p0
.end method

.method public resizeToAccomodate()Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MenuBar$Menu$Builder;->resizeToAccomodate:Z

    .line 474
    return-object p0
.end method
