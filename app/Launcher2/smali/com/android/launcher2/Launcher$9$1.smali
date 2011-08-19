.class Lcom/android/launcher2/Launcher$9$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$9;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$9;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/android/launcher2/Launcher$9$1;->this$1:Lcom/android/launcher2/Launcher$9;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$9$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1388
    iget-object p0, p0, Lcom/android/launcher2/Launcher$9$1;->val$v:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/widget/Advanceable;

    invoke-interface {p0}, Landroid/widget/Advanceable;->advance()V

    .line 1389
    return-void
.end method
