.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setOverlayVisible(Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field final synthetic val$animated:Z

.field final synthetic val$periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;ZZLcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$visible:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$animated:Z

    iput-object p4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-boolean v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$visible:Z

    iget-boolean v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$animated:Z

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$001(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;ZZ)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    iget-boolean v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->setPrevNextVisibility(Z)V

    .line 114
    return-void
.end method
