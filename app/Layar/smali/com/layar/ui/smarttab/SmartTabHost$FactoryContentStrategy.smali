.class Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;
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
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method public constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 622
    iput-object p3, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mFactory:Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mFactory:Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    return-void
.end method
