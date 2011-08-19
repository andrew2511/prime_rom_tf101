.class Lcom/splashtop/remote/MainActivity$7$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/MainActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/splashtop/remote/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$7$2;->this$1:Lcom/splashtop/remote/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$7$2;->this$1:Lcom/splashtop/remote/MainActivity$7;

    iget-object v2, v2, Lcom/splashtop/remote/MainActivity$7;->val$macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v0

    .line 311
    .local v0, id:J
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$7$2;->this$1:Lcom/splashtop/remote/MainActivity$7;

    iget-object v2, v2, Lcom/splashtop/remote/MainActivity$7;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$600(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/utils/DBAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/splashtop/remote/utils/DBAdapter;->deleteData(J)Z

    .line 312
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$7$2;->this$1:Lcom/splashtop/remote/MainActivity$7;

    iget-object v2, v2, Lcom/splashtop/remote/MainActivity$7;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$700(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/ServerListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/splashtop/remote/ServerListView;->deleteFromDB(J)V

    .line 313
    return-void
.end method
