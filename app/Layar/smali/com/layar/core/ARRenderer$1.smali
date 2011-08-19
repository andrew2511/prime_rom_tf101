.class Lcom/layar/core/ARRenderer$1;
.super Ljava/lang/Object;
.source "ARRenderer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/core/ARRenderer;->RadarClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/core/ARRenderer;


# direct methods
.method constructor <init>(Lcom/layar/core/ARRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/core/ARRenderer$1;->this$0:Lcom/layar/core/ARRenderer;

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 709
    invoke-static {}, Lcom/layar/App;->refreshArSettings()V

    .line 710
    iget-object v0, p0, Lcom/layar/core/ARRenderer$1;->this$0:Lcom/layar/core/ARRenderer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/layar/core/ARRenderer;->arSettingsDialogShowing:Z

    .line 711
    return-void
.end method
