.class Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "SmartTabHost.java"

# interfaces
.implements Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/smarttab/SmartTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;I)V
    .locals 3
    .parameter
    .parameter "viewId"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    invoke-static {p1}, Lcom/layar/ui/smarttab/SmartTabHost;->access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;ILcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    return-void
.end method
