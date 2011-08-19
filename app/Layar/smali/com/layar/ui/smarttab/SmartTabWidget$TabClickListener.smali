.class Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "SmartTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/smarttab/SmartTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabWidget;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabWidget;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;->this$0:Lcom/layar/ui/smarttab/SmartTabWidget;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p2, p0, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;->mTabIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabWidget;ILcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;-><init>(Lcom/layar/ui/smarttab/SmartTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;->this$0:Lcom/layar/ui/smarttab/SmartTabWidget;

    invoke-static {v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->access$0(Lcom/layar/ui/smarttab/SmartTabWidget;)Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 280
    return-void
.end method
