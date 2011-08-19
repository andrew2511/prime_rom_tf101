.class Lcom/asus/DLNA/DLNA$20;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$6802(Lcom/asus/DLNA/DLNA;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 2308
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2310
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lcom/asus/DLNA/DLNA$20$1;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/DLNA$20$1;-><init>(Lcom/asus/DLNA/DLNA$20;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 2356
    return-void
.end method
