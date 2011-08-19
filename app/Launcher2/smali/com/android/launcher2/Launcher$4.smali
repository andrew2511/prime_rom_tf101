.class Lcom/android/launcher2/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onClickConfigureButton(Landroid/view/View;)V

    .line 1064
    return-void
.end method
