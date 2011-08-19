.class Lcom/android/launcher2/AllApps2D$1;
.super Ljava/lang/Object;
.source "AllApps2D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllApps2D;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllApps2D;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllApps2D;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/launcher2/AllApps2D$1;->this$0:Lcom/android/launcher2/AllApps2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D$1;->this$0:Lcom/android/launcher2/AllApps2D;

    invoke-static {v0}, Lcom/android/launcher2/AllApps2D;->access$000(Lcom/android/launcher2/AllApps2D;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    .line 147
    return-void
.end method
