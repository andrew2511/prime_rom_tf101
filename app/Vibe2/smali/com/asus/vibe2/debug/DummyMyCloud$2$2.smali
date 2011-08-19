.class Lcom/asus/vibe2/debug/DummyMyCloud$2$2;
.super Ljava/lang/Object;
.source "DummyMyCloud.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/debug/DummyMyCloud$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/DummyMyCloud$2;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$2;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$2;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v0, v0, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-virtual {v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->finish()V

    return-void
.end method
