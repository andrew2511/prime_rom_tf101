.class Lcom/splashtop/remote/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$2;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$2;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/MainActivity;->doHandshake()V

    .line 219
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$2;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/MainActivity;->probeServer()V

    .line 220
    return-void
.end method
