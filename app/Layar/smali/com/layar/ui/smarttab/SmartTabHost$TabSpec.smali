.class public Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
.super Ljava/lang/Object;
.source "SmartTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/smarttab/SmartTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

.field private mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    .line 433
    iput-object p2, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mIndicatorStrategy:Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getSubsection()Lcom/layar/ui/SubsectionWidget$Subsection;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    return-object v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 457
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;ILcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    .line 458
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 474
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    .line 475
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;I)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 4
    .parameter "intent"
    .parameter "subsectionArrayId"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/layar/util/Util;->getArrayIds(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->setSubsection([I)V

    .line 483
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    .line 484
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;[I)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 4
    .parameter "intent"
    .parameter "subsectionArray"

    .prologue
    .line 491
    invoke-virtual {p0, p2}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->setSubsection([I)V

    .line 492
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    .line 493
    return-object p0
.end method

.method public setContent(Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 466
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mContentStrategy:Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    .line 467
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 440
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mIndicatorStrategy:Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

    .line 441
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 448
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mIndicatorStrategy:Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

    .line 449
    return-object p0
.end method

.method public setSubsection(Lcom/layar/ui/SubsectionWidget$Subsection;)V
    .locals 0
    .parameter "subsection"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    .line 424
    return-void
.end method

.method public setSubsection([I)V
    .locals 1
    .parameter "subsectionValues"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-direct {v0}, Lcom/layar/ui/SubsectionWidget$Subsection;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v0, p1}, Lcom/layar/ui/SubsectionWidget$Subsection;->setSubsectionArray([I)V

    .line 430
    return-void
.end method
