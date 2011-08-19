.class Lcom/layar/ui/smarttab/SmartTabHost$2;
.super Ljava/lang/Object;
.source "SmartTabHost.java"

# interfaces
.implements Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/smarttab/SmartTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$2;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$2;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v0, p1}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTab(I)V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$2;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-static {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 141
    :cond_0
    return-void
.end method
